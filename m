Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011963431E9
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762972194; cv=none; b=PlsYcJOf7Ob1DSFp89ZwZ+wH4J2dwBVjqn6kUe4r2fPSL78/KhyfvoJkyQ5fgGHV6wh1I5RQ7TNfrZUNZrpOYRbdHQVOH2Hs2CVllNBzBTzqQqQtiktziFW4CycSlyLGdbIlp9kaS/7jO4oA+hxRivT9xTN+MaYbA9U5PQ9p5EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762972194; c=relaxed/simple;
	bh=tNGLDdGc1X0D/vroprRWC9Iu+GqzS2T7PstTMpNpC0k=;
	h=To:Subject:From:Message-Id:Date; b=m8vhTo0osX/EKs4PJS6vXsJ3AL3eqBrf3H7lTF2KJunqkH8iCrlE+CpD55YVbAKLKTten7BpnZPNB0wWF/XxBTk8Xjvlb78zTensdOiMyuDNTBDD0JaumaTuzkr0K/R2wIxwgVfkk2oW1a89HOTBNqg+n1f8CrKnJ2F0pO4/v24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X69m3o/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X69m3o/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F099C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762972193;
	bh=tNGLDdGc1X0D/vroprRWC9Iu+GqzS2T7PstTMpNpC0k=;
	h=To:Subject:From:Date:From;
	b=X69m3o/3zWaN7txyrfVLeNuFO5ocrFFPgm0MlUmIOWed9spOXCG+7Vgyv3yXt295R
	 dBWDaTsCHPAF7A90hIhY8EbVY8zC8CCrg3xXJPPQtuVaDfIFcVNTn3mj/FZ5+/Nuo1
	 UfqXZvsruw6N3jwQUE9UD1s6BK0XEveFjTDlyAeSrgmyZtPv5F1lWg30fqZlicL9A8
	 2+H8JYzIGGdi/QCPl2k4OStejPf2C+DPdniQIxRA0Qw1lSRCQMRR8SOiLZVLv7ImY4
	 X5GVtRDFhXjGU0Y9gvrPGx7QkvyRpq/T5tF4lAvr2SLMD3ln00cEt/HAEN26qIxBy2
	 Ywu5j61O6SH/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C3CCD343C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297219359.17291.17562293324329709609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574c19dad1c17f583cf7442718728f1778502a657a5c854fd3ba425c103cb8a3
Date: Wed, 12 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762972193
