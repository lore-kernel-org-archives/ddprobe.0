Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33958EACE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759810794; cv=none; b=nMuE/bwg5lhLlRdSV4oc0CJKurW94Ezy0Kgwwjju7RROT/9NTA4H8yEYBWprtsXvIi6pu0xJ30GH+XBt9DAHfEM8sx5qrJM3+jGHUwL8QKkkrHq9ATMNcUJJLZpEPMndTi5Hpaf7dktnaC6f9W/COnzq5fTwB7lqJZlxcqQ0uWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759810794; c=relaxed/simple;
	bh=UKnkIE++dOZDrlZ/+K26KmbwdydWuzG4wLFXaNEzVGI=;
	h=To:Subject:From:Message-Id:Date; b=Ld5fJ4Fbh6TmqqzZPXfTuemSZ0I7XVuSvUFWTDy+bvXlxTCyGL2knyWAu85v2CIYKE+lUMGkHJ15IWO/pjUsUtzN+z53nFJUzRyrhsAUPlC2VdLDp1mrWCNjwun2D0nWTwhlPP+LbpLdB2grC3Of+JXuk77s4/XExbpB8dzzUn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fy76TY+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fy76TY+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A427FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759810793;
	bh=UKnkIE++dOZDrlZ/+K26KmbwdydWuzG4wLFXaNEzVGI=;
	h=To:Subject:From:Date:From;
	b=fy76TY+A1JOzki2NuvoS+KlEkgkZspqTxeZGZlUlPdgE/ONQT2iQbruRC87t18T2W
	 DYy0h464JB7PfTRHxMFbVjfJzVEXt2BgBOX/vtbpC3sESpMHdVepq58T7aAJQjZMqY
	 IcJQ0KxRYx2Kuyt72JVe+3kbdmISj0Ewor78Lz1tOO1L/60+MrJOLVsr62863NGzmh
	 lqa3JqIU1aNuvSYh9tX5eczzRqSs7dLwcWLHxmXy2Jcao7pK9YdINV9zI5/hWJZ2as
	 rfxMcSc16LLR34vhyhsnzfRsSgXeBOgsnG8sRkWqE01+Q3wHXvWN0qIGIP7Ag8tP/X
	 nvEURVAyj2d9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DCCAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981079358.17012.307644062496957516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1844cb9246d283c845e536fbf1e47ea661c7ca479c57af8c84092c64b74e81
Date: Tue, 07 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759810793
