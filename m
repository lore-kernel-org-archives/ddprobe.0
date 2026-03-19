Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAB73C3BE6
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773917094; cv=none; b=azbfqjfZ50JG7vDZsvAdMldQHgl+Pz4bxUNmzMPBrF6mOa5vkUL+y8h5txrEWvaZ2tHBaS5hF9P2WWlM/4u/0jZwFtXEW3RPbVSiPYn6Dl8BMiIJBpc7vW7dpWXf0o1O0tbqJmjER2jZZM4S/6aTFgxw1wp2qTPOiLWA+KU/UD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773917094; c=relaxed/simple;
	bh=hdXKGXdbqxJuEPpNWXEDaDm2elAKFDaaIGDEUSWhUos=;
	h=To:Subject:From:Message-Id:Date; b=C4ZsUFjhYDrGYQ8YqOBHA3wA5jEftSF9OPeWQpwa2iQ37oBiFY3JF8qKEuJgxy8c8qR2DQ83jozNh1VCB6U49Jznv2d/KVSp3u9sN84HBjNKbQegFbgHSVpXpYY5jQ0fMSoHEfBEaRiSba1KlUqyV3gnUw69JTfphk+M0umydQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWDNt4i1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWDNt4i1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E01CC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773917093;
	bh=hdXKGXdbqxJuEPpNWXEDaDm2elAKFDaaIGDEUSWhUos=;
	h=To:Subject:From:Date:From;
	b=BWDNt4i1lC/TT+dO7oul01TEqFY2n+lvI2dq+8K7GDIyIXF2AkQBkKO2g8429KiRt
	 KbmCjUmPWMRIFUHWIrjj1LljtGeseXd1V5yxlE/xNw+e3bCIiv2uiEjc/GV+iNjoTR
	 AX2+VfSlRrCa6CntzxVLxYH3Kms+RscJQFvmrEEBPqmkco+OtU4CRUGMR8dVHA9bwa
	 fJuzVmyflv0h8jdhA28j4aajtWheOOJR/aHsDJSQcovIKTbWWLjCD+okD8GGs+vFYr
	 y9p13rA2nUAppv9s3OT9wWCeDF55KB6FpBxLmMNbvm31LlC+Zyjl6NckJCEbQ+ni45
	 IoTuqxUdFnRsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F453108E1E2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391709357.6729.13739253679940972558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed561e6207aeeae5ee72d683c900ad47ec8e8d8d498ab692536f4fb422ca8d60
Date: Thu, 19 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773917093
