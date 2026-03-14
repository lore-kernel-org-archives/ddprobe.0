Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2761684B4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773458094; cv=none; b=ntpWyHyLxMPC2auRitFJDyFt08X2e5Px3qrX2cxr+bWRuVTQlRXvMGREbyqrHJIfFVHdGjLHvrLYRN5IH5+WWzZhSsakS+7zsSlhY1QoIyy3HlEgpYxuPU9EGn6S2jsOqjdGu7mJv8im+QgHnuNjhMJ+yIge+2w220ceyZzh4RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773458094; c=relaxed/simple;
	bh=5fK/LBiqSFMMi1OgvnE3qVj+rrnB8F96hotnQo4icz0=;
	h=To:Subject:From:Message-Id:Date; b=IwRCrIazSrb839acENMQWbdpCOmFv0HHQUyRZYCZq1jz+XdS5G+9rrCEgu8GL0Crk/aBgk5rGNu77SXubKK/ptmbvZwCDo18MpkUXXzY7FjLzTmoc2cCQ3b/fPTUkM8B/cmYEAv56Smk09/7vFjJ0H4nzTY/U67vHXmTle+/Fio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQV1t7hQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQV1t7hQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B2C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773458093;
	bh=5fK/LBiqSFMMi1OgvnE3qVj+rrnB8F96hotnQo4icz0=;
	h=To:Subject:From:Date:From;
	b=mQV1t7hQZGe+NJHrXh8KAQOFPJR2pn0Y719iHZ0dDaBRYKFMRdFW4EekZkB7OEsGf
	 5Pikgsy31CLTJQ5P/WJefjQQ67ThEc8CxR8yS4X4sqtqNlK5GQCxn5+On1d1RxNCMa
	 rAHn5r9PoP90q0vo3iBndupcwxkHe/sKp2lKPRM+/gserwH8JSoUjB8uYSg5HRx/09
	 LOAbNVORVP6j1B3u2/VVgRuLdkfB8jq05fSaAte2/Fw2bl9NZaxh7BtUuvYn5cZNUw
	 nRp4VHowXutxPNZP/UCm67ym0VSF7VNUGq5LuOuKmNi8TgnT1zFSiMKCtme9xHqc+F
	 gOMAd92mujOkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929EA107BCF2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345809358.5244.8450848132222212845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0386ad2c7ced88e4318b4b697950d53f271869d53de3be6f5da1ba3ffc7b419c
Date: Sat, 14 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773458093
