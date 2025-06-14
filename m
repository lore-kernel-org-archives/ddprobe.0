Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F21E19E819
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749869994; cv=none; b=azaUEOc1I6zu3YznqbgXEFTlbJgnlEPEVYFIVCWnTPtzIwner9sKU08HVqV3sB3c7oVsBJnE7aNIGdF1BsFAwwwd6zeeFjKITYhm34DRishXNJaZKm7MTQBnn0VrYcdnQK/SraVPOvMV4enW2OP9rW1c3lTlcvFZ8XFKOP3GZnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749869994; c=relaxed/simple;
	bh=Q/uZB1tSyaHfN2Gp9jzY0xxtf2pwUcpz3m8G0tMEmP8=;
	h=To:Subject:From:Message-Id:Date; b=Nz1PgoLrnYUkkAVVvnsKGhzwIcUh/AYGGlXxVLCyDY0G+GFd2GxeiTmUKQ2aicU5IC0ejVTuUXFPtmwG9Zn+7rjNJMiGU9KO1rORhg4m+qsPVjslVQVgGElbJ3EBH2JPU2WDIvgYVpvdw/JsVG0SdWi24seffyBrF9LP4/Dcu4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr1aewqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr1aewqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EEBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749869993;
	bh=Q/uZB1tSyaHfN2Gp9jzY0xxtf2pwUcpz3m8G0tMEmP8=;
	h=To:Subject:From:Date:From;
	b=Fr1aewqvyVJhb5rF2RcWf6cPk30crPNqfMKY/zzgiwPpG1Z7C8Ev6FCnj9xaXpSCJ
	 my2DKmJEzTtGBKjVqdEs2y4+ah3oZmMia+JNfSMHsqhLAp3xuNBniXDhUFnE2++EBA
	 KqHDBetpgg/3PFIEhUmrBokmzZcnfN6m8nHSlDQjSYDrjd5ia6qNM/YGkkqbfqSb5u
	 ZCc43vezTcixZEIrg0zUTBOtl+XPB2+0lA28DfUsz7/u3v4Ikx3QFF5USXQwBEpfEd
	 RpCymD4Ljj5wZc/feDIfRFPhhZloJbEM6loFHjhOfPixAgetmCUIgNmHScwJbYrwI/
	 /NreSdRJKbwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BCC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986999358.552.10449472073525069938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa5025cf874d44d81460f630cdecffecd3e2d4e9abada0e0a5524d275f76721
Date: Sat, 14 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749869993
