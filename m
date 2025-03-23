Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E296135A63
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742743794; cv=none; b=j/m/W8A1T97pwn3EkneJsG78W8j7pf4UxK5juLtj0fLJ8oc2O9q7Zk0llbWuilUHk9QFXNc60MN3EED07J9fEWTgwUk2ZEoLQpr/in+kTMo4umP9GXBDux/R38Fq0+eBDKm2COo3xH1sl6I6Z1dKMH3chNEbTWVzrCDMP75Ztnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742743794; c=relaxed/simple;
	bh=xOM/Da7SELozdfoPgXbw7rXcDSvu+Rz8RvB5g02clvE=;
	h=To:Subject:From:Message-Id:Date; b=of1N8mslzMaHAdKeW/WrP9UA+04C+bnbs+tHDIeLwXTwwQn1CZ41+BVC1HpTaiz/IrcupCiL2DPhXLjgZMbM02K/7P5Qfhr+0LF84Qoz0KFb6fWxz3R7UOffDLwlBIPQqqaku1+3Km4G2pDOH2NsoJyATnPkosfK38rRsst8yBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTRp3ueB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTRp3ueB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01AAC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742743793;
	bh=xOM/Da7SELozdfoPgXbw7rXcDSvu+Rz8RvB5g02clvE=;
	h=To:Subject:From:Date:From;
	b=JTRp3ueB8J6hUlXNdav4OBTktbfqKGa+AtsXvxkzCvQTYiDFvUW6oVoOE2AVA4TRZ
	 IBxg5DBRMS0YGLhFAcDXYgg1LLb4+vSWiz72N6jDEAR0znneJrBc8PdTnnj9tow56f
	 5PZxL/ClciZnIaCYP4pBL2cKL3uy8y+ot4JvSULNeGMe4DFotYFB6o7jHpp8IIRsjs
	 GkGkKcxlzL6d0ihoedE0F7GZ81PCY9bidmbbro8oxpIsHbFak4MZXrS72AG5jkB4uZ
	 kPbnmM4rXMUWOO6uBkIv9JGAczC1IFEjtVoQTpA/sviIRMMZnRzVdICFBRxA+F9Tq8
	 SAT6/Kw3HbB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8539C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274379359.22999.15423569388892550024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb8182e494dca46cb1e9e38e8d0cedf68ec0c469010d76782c9aeee01c04d79
Date: Sun, 23 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742743793
