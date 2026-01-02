Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CB13C1F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767345234; cv=none; b=mSnqieuFMuyD7hwxmAwqpbUymzM5ja3cFONzZU9cdgn2vWAFEYA90lHanZyPqp2PecHkaKzKstiiwEFd8soIm2p78GYIrN6Dyf+8KJc3xiVMlRWL8riCSAc8Bun0HzJ8aZF+d+6izW2sAlmdAeSYXAXN7Sop+joM2FsSdv2oiTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767345234; c=relaxed/simple;
	bh=ATvnvexcFNFWawqULIwYzYazitKY8pF3e4DX8XVDEME=;
	h=To:Subject:From:Message-Id:Date; b=BS+d15ZwveqNGAlJ5xRYPt4m5tvECee6/c0ObZhnGfeLTbsoz8ZYlyZN+Tsc2rnF4j5Hh/jlGPMG9bseMjQ2l0Y+kJ8oUjCR9FhShnZZtCM8zdBV8boI7M99tPPt1oDDiA4YtTioB0/nBi6t1es0AzV811v0erUqasqW8UpBud8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlKWYbQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlKWYbQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDBCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767345233;
	bh=ATvnvexcFNFWawqULIwYzYazitKY8pF3e4DX8XVDEME=;
	h=To:Subject:From:Date:From;
	b=UlKWYbQNgx29rCmVatRI0yolTi/3/GF7vR6Ro6KKi0e2FT5pjWNAcjhUBwUeOV2W9
	 lguW2zWJWpzXseaBcPMekr4ztyp46hwzB0hQ7WeeDU0yQTkb0IjZF82EUf381hmUMb
	 7qleKt7iN6pMK1NFrJcLos9MOALZDaJDqJFLwSiFPKEVneLYK/UyNTUQHuQAHGRrTU
	 Qq5BKJLL7+3d2bWg3o+fZNK+myCMU+5PS+5f+h17SljvTiAhB8tR6ieLHy55Cw1CLU
	 W7yvebl4p3o92ezBT34LliCCYrQC1FZF4eJNPHFBORGuIbba3LTp13A3Nfi5burnno
	 9MeT/vQ5jQEYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF5DE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734523357.18715.17111065683570872781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96a3eb051cf09a18f0de5736141dc34cf29fa0c170d05fbf75994fc3cd85c43
Date: Fri, 02 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767345233
