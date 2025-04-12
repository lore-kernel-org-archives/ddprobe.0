Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470BF158520
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744500594; cv=none; b=goilgHH92p7DKyZ/B0ONxkhiRgWP8ZJQhsKFBM1dRBxTpSl0EOEMg01JxxT/2eFaBwn5urHUdlkqD6IXpLkf27QOV86uJdxEZCJeuudzXxeGzo2mj4cfDsblrwrpEqLb59JNNwRSuYEGVwZYqPkESPtwMTy37W8yowL0AuUUQ8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744500594; c=relaxed/simple;
	bh=0XzlWBGVXQjToKshUQGKMjCT3U4Ee2SR6L4Fo9dATkg=;
	h=To:Subject:From:Message-Id:Date; b=jT8XImUwiv7BGJDQoafPhboNpyrNthw7yG0CMQ7q0TXSE3QJLV1CyaRfrSuUT2/Emff84VzTjQDvj+asUh/WR7FkrfefFbXSrzY/6aq4qa4xibALbO/b7/ZZKKF9A2YtasbOmFARxGtptB3qi3t8VWCSuvajxh2GDV9z+vJ1k0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTjnGEMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTjnGEMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F6CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744500593;
	bh=0XzlWBGVXQjToKshUQGKMjCT3U4Ee2SR6L4Fo9dATkg=;
	h=To:Subject:From:Date:From;
	b=aTjnGEMp8QCBayJiGOeB/pLyC/rRRXfPWTfIh7vwCqWicjOkBG9SMc0+ls0S5uLz7
	 9sqX72P9DHAvy8dLVVRRi035mYXw6Dcb0YhA/Umwwh39QcWmqXMsz+H+zqMmkKhHTu
	 pIhb4OzWCGiP62i2eyvTV+raqGsVg7GkrBaawNmzOWLBITvebBM3nxyr3jtYi736m/
	 S4ebNnEzIiXGVJOIWCN1aq/k3NaY8A2dXNX4HS8odEonfuXhQ/21Ra7RAWrNFnuiGp
	 Cqcb2COt2uS5vhmRwJ2wrCzDEz64KkVLG1CR92B4oKW8cBoQhBmG4kElZltcvKgsGh
	 bdRxEojK6WdqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7E5C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450059361.27276.4548542026150080795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9e7702e6a3a1950220bcfc073a5002112eba584ba70cf86c8b00518298257f
Date: Sat, 12 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744500593
