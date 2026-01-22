Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221A7346760
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769076234; cv=none; b=P+beA+AgCN7AZKpJMI4I51zRYO8ykscqDoXgX1n1yKjCWAlvYD7Qv2uQHba4ZPyWmo1mj8U1ZxScZtFWkare/p0Pvxz3BP0o/+lleiefrtK8CyzId35HNvzJfnJ98Wi1Tidi25WtTdg7CwU2woUUt2E0jhmk6Z/vrfIb4v/NzRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769076234; c=relaxed/simple;
	bh=JY2JnBxfDqy/azZRtsiJ6CqVfOwAiWVMlnZKBm7T3OI=;
	h=To:Subject:From:Message-Id:Date; b=PDPBh22m0VCETGe9MQOyYkoBdEXRPaIl5EUDjXgvjbT/NWY/8PsR3DfH/sfkfgxAsbgw5tV/wxioDq+1iLyzbKRhKeTeEnY0j4n1PYQ8WZUVsyRS16R6JgR9luk0iodxgYz3lfgk5ZUyuxfMR+h2r7KOviFWFQVs9O8UPTgw0S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzFKY2ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzFKY2ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4286C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769076233;
	bh=JY2JnBxfDqy/azZRtsiJ6CqVfOwAiWVMlnZKBm7T3OI=;
	h=To:Subject:From:Date:From;
	b=DzFKY2epISlkAn7dEAwOtaIKLKdGbpgHmspIhbxBGGjWqIgFcDat4Pjck/pEg1nKQ
	 30HqrDai/YC8NNXdmQ/0DminKl3I0pf5pKG/WI/bdmDrET1EECGSbaIix+YFeOz+It
	 UcwmYhcenhqSaxQlrMFGTP3LM9n1kG02VFVh8ojmjKnLEtGzIaKOvFbVgi85C+IYlq
	 4Hu+cVBjn3opYDSg6iYx+7fWbiZErUgPP7Xmg+TbZPURGgm9NFruONTorFCZ0VqJFA
	 xxIb1MNIdoPAlIVA/ohMpNwScgHdQL7BQtS1ztxehWB38liERqQuEF5GPx4qjxbhPL
	 WvvbZkZGWlv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DF7C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907623359.10995.11802797604071881217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49e6e81a8681780c63b01ada405beb516348a62a8d240a18155922d87d43bdc
Date: Thu, 22 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769076233
