Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EEA385ED4
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769098435; cv=none; b=ICqyBFUheX4dykc10KqAwlogecfOSIw29+UVrVky7ks5hUbPxE67ViiwkSsKdS3Lhf0wyNCSVFzeeaIvrEOr4g43nYCR03zXAHbRN+vZwZ/U0yf+Ki8TzPQYPcSzhwwKdcxLFQWOmPkl6u8wS/TfHuHWw+uMZDZ8DJVirSh1lY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769098435; c=relaxed/simple;
	bh=Debyaw8CKAi77WRnGqlVudQZXY3yM3Epll15v9WD9Ic=;
	h=To:Subject:From:Message-Id:Date; b=Q4EW/F1vvcJmx/7MrOesAQII77QzkPbNnNqqPwR0RB7qhr0K/Uyw/hQOMQU0OVDpUOj8OkyFszi9mfnL7wgnFuFwx/hHZ3iwv1yf/dFw5KWMbKn6ZlTQAYqj/b0FkMYAdjceJbMnYLpuqsxkgAid8q6NTyYn9SX2ZakhWUm6lh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFCzml9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFCzml9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A79C19422
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769098433;
	bh=Debyaw8CKAi77WRnGqlVudQZXY3yM3Epll15v9WD9Ic=;
	h=To:Subject:From:Date:From;
	b=PFCzml9pXSPJjgY8tVAOmwDfqigapJXey3ttGPSxmxS73zYIeJ+zfxLo85EQc1/dB
	 RilqFWC/GTTbSwcP5WXDgz1ftk7lGDWlDQ4vxLZyUWwy6LiRSsKPTqbte2z/8qlSta
	 kAm/FX/oHQ6VzX63Q5OGruuh7qTxQndXm6kUu3dMO2gm6ARTRzMVebSY7/qZH8kwoF
	 Y9QRwo/H/TceiUPgJgOBbF+7Y92WTtG4M0aZf1cBmtWMN0ytRpc/RcH7rJXkxqHwX6
	 3KDX4cqgMVBZivShSKAwJTibd8rKn5sV+uuXKYDUoi2IQhe36LQwFB8L/67wOCm+lK
	 12eNOD9YTjrIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940E1D3EE8A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909843359.26094.1242832130673426507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21540c078bc7d97293cd848528d93ef25119d0426eac19348685afec1c7dec60
Date: Thu, 22 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769098433
