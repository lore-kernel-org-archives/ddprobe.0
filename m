Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405242D877A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782084394; cv=none; b=He7OqiKIrKnxh8QYl3grXnZ8vGLbSFkmuIRvnI5meQRk7cOjzUqsdk5+M7bE4p6/vCPFqxGTr5aFfDULCu1hCMOXaaNJcXPJ+pddEz1KBA10sH3chCN9KAcvntMXyy2yJNlrqrA4liem9dZHmL6KIMtkFcL6kE8oB5rVFTgSR5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782084394; c=relaxed/simple;
	bh=ri1JhR0fH7ck2yatZObqZArSDCTq0RhTUspR+iqLATk=;
	h=To:Subject:From:Message-Id:Date; b=GaYoBbDrdlmTQSKXzA6QRPGRyrC5498MxmwmJAaFEeOojud3iquFhHMt+o6QADrfAQAuXUWXyEwC4b45TQvqqh4flVzs6K3an6MM13wJpUzSaAO9jh/LZBlNqpngdiqCGuLFm+PdQ1idsqAkPiUSwKTdkBMva8EK0/PXJCYBO9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fji+Y+H1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fji+Y+H1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3351C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782084393;
	bh=ri1JhR0fH7ck2yatZObqZArSDCTq0RhTUspR+iqLATk=;
	h=To:Subject:From:Date:From;
	b=Fji+Y+H19qDW6vuuCscKNuNBeH1nnwurwOOi4haQWd4qtzerr0P6d1IGls8EFnzEc
	 vy4RSCDuMWad4wj3msABA/iPqQcuZZxtIoA1ZUJlgcn0BhGo+O4ym40PFDtmdcgYDv
	 Jz9RME4O3xkcQVXjyX2ZjpoMytHNny8Fz2F/AilRQMvOAxK5k5uKm1gDJg3iNX4h3c
	 ptDSrtnHYSNBMx7HSxK8OW8SUzb/gGxSUIK+w5ssV+UzUPtiz8TCXnNfk42rBomuVU
	 5mdjOsLdU8Wx7mYaYgr5HY2ghUOJoADFDaLVNi4edIFO/dwFUxXZWs65x26ddHX4lx
	 XSqiPsW8gp3UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1568CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208439369.15810.12499807025589969733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ae6be2fb9d0732275233a92c6210fa8340480e1c173a3700240218a983589e
Date: Sun, 21 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782084393
