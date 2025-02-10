Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901C3A934
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 01:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739152554; cv=none; b=s2/xPDoRG4NDyerbohkywiZ5uZaxYM4wGGZFblhV6Hyg8wxUI0o9/WrIk31DLAkkTyeHLPgy5TvN1lxRlbAac4a1DDXi0DatJw+P84OReVvJh9lpT6rTNj5zfI7zk+qgGvOf2W1OifMpQrPWOSKnz8gRf+klcHKec6TAYwiTzfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739152554; c=relaxed/simple;
	bh=LlWPvBvGDh+jobUyfYxDn471TKLECGS9BEA2m18GBgI=;
	h=To:Subject:From:Message-Id:Date; b=tOwL/AlH9Rkm4nw1eHSd7mEoa2RDUZgUQqAhcPW6HIeqKYcl0UVQkqGBBps5DPwPH5KIigMn7uDIFx3/m+DzPYLVswOBq/YQ6AN0b9E2fAu8oZnuSizZphhHzsFi91YXY88/j+PIEB/8XSWYkG7MHX9Acnq65glfHLPbEm8IbWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEDQAT4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEDQAT4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15613C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 01:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739152554;
	bh=LlWPvBvGDh+jobUyfYxDn471TKLECGS9BEA2m18GBgI=;
	h=To:Subject:From:Date:From;
	b=dEDQAT4HMlQG+2aZ+9KwqHdnEshpiecqZWEORCveAZkcnfhx6IjSz3PsQ/Z92Jk51
	 rvg5Xzrl3x262ReV1pdZsZjjQNPVN903vIPOHE4Wg2q0bak5cLViM5kmEhQY3C+lY+
	 H0GrkgMVqb8b4O93uh6DaeWhd2cT0+52Qt1UA4XkJmuOxkoCV0oN+o7yIFCbn0jh1R
	 Xkh9kpr/BstHLrh/MA7aCr8rabJ4GX6uQglykFQnXyE3n10TsMf7T1kzk50ko7xPUQ
	 ptASV5jtcmYnroVMUGtzNU5L5rU9Orx2zHjjZEo9QOVOgVsguhO8s7tEqxr0POKDMz
	 OdxzxRIW/u7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3B11C0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173915255374.9508.14044029840432563541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db130b8542d143380c30c279409d1ad84da50a6692b9e1c52a371a14e5f05c8d
Date: Mon, 10 Feb 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739152553
