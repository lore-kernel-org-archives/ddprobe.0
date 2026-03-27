Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD6237999D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774638894; cv=none; b=dSu2Q97dTA71S93yBgQcf7m/5itjD3eg8NEzlJ6Hw2mBAtpNOQOPx+GhGDq9/3HzLIJmtSZ5Gv/VarLaoc/j9EgeAULOfClhgFSydHe5QSgMI/exBLQKijN9MHm3gnZWfEpbqsTFLn+t7itdSjxVYfSvOtDa/JDzGMwLN+0DkKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774638894; c=relaxed/simple;
	bh=y8ozyJ26R5ckUBJZ7S1pZaOMDok9my3fBRZIRa5wBNM=;
	h=To:Subject:From:Message-Id:Date; b=AFct/1cPSuHjXM24nPzZa61wJruo+7Ie4Dag7IRYHJ6ZpL2rw/2u2WpfjYL3Bp8Zdt/7PcsTq/bE3nZk3dnelBe7gKYQH6lYk7GJTMNECYIMIgPSw9RdFj9oSWDzb+DmgZeF1GjA2QE6ginIL5NqG6BcZ6wKXinGZGkaKoFzMmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZVKSJm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZVKSJm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A8C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774638893;
	bh=y8ozyJ26R5ckUBJZ7S1pZaOMDok9my3fBRZIRa5wBNM=;
	h=To:Subject:From:Date:From;
	b=YZVKSJm2nK2p0p8/TL9dI/tc71WZE3546KDGoyYEBJnrsBoLKkc9Kv6eDGdFONLq3
	 w7wmHUM8p4rwAwqt1ioVTueFY8oVu62bVoFJjCIbeIrLWV5vDUPiLxkmKcG7q0RaXd
	 1BTFvB5KFs6e3BYPvCfon+fBho9Z+r0EhxuZxg9iu2nHwGhCftmTTJ0+cULSppVsZG
	 FPIocWhpjI0H4V0ym6heU0U3WKk440jSam4V8MbVgsZIRzC3ooiZwtVjzE/p1MzZuV
	 9EXLl9azKQuXTjAXM2d2niOeHWMeFQhG6ac7bg7AFP0v795wpCA2rxn1qh94vs3QVN
	 targT6RYX+LxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968EB10F2867
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463889360.2970.4900390403241243255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62d9298139ab5a9cad445da18b48afd2f4810acf15e0b331bcf49500e2c876b
Date: Fri, 27 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774638893
