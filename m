Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4560638DDB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747561796; cv=none; b=Qqbm/qyiUvUakXOQ+u2xXXBekk5LRJ/7G4ftXe+5S51Jt2AWovASJAEXxt0rC1l7+X6Hz2WAWZr9I7IbmlKTCQx7OrPGw51F7+YMwC4tBg+/mUyp9tLqVq0NwmobFW5B4SlPiHLrBgEG0vRJKJN2h2iRq8wt2PQcGg9Bv38XuFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747561796; c=relaxed/simple;
	bh=/JbZ3aLsP2YDrIqNjYpsWNypTLT2I/g+Bx7Nepawg0U=;
	h=To:Subject:From:Message-Id:Date; b=ZsgEPW2RpgzeJ1S+G4qS95EzFkwFHa0c4qYXIGmGlrig8z3iVPIoa5DEkpCjjbDF31X7fUecZhwiqU1q4yLZYz1T3kI4Qg/QVsCUO8V9PrX7JUkt0Rw2peO0RtvxLkblUc/uKwubVR2bn81VptJQLtH2dvD/sT0/ln/Mchmhk10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPUW1uk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPUW1uk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A274DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747561793;
	bh=/JbZ3aLsP2YDrIqNjYpsWNypTLT2I/g+Bx7Nepawg0U=;
	h=To:Subject:From:Date:From;
	b=EPUW1uk3/AV3oevkNIOT6Joxko4O9ZgE/Tdzz1CxGlSWoYen5IWTAB4lTpGkUVfs/
	 Rc3i8x9D9eiUx5P1IoR/tnMLEK9N0BujbJXpdufAIHvi1HBNBIsQ3wsuXYqQiS86CR
	 NTEUq6Qaql2SQ3ZRJZaOMajRyvc0jE78tJUbXTxlZz/wK8UbznMZ5F8RkzgmfCNAnN
	 6vikWiDuq4CCTdMoeUscvTx4pqioMpnpKEYpj+2mOAQc71DQ84BxKFoXyAX3JFYkB9
	 4kCJ+iyCfVWfJVp22uol5edI0YNDK1nsEnuvZkirIe3Y4r3OMu+RTAgrCsTwv42Lwl
	 SySO8nTb/uPMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB4C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756179358.28879.12920603470767320896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4747c42c0e7187f98f434a5d0180d1a96f30f2dc11c376b35f6ee60019b8cb37
Date: Sun, 18 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747561793
