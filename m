Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85E044BC9A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786616434; cv=none; b=ZsU+n/V04BDj2f5gxou2WUpntI5lAJDZULlJIjEfBRj54lkXZYU5FKcFG5I8iJxmRJX8cdid9pKun6bMvvhH+Yf2rJ1bzLlnCum2J0ByibRRFCFjRDRiPS8BDqyjc/xJe4r93lGPFCYv0UvBWcd/npcdkNF39m2agjmnlNN9SVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786616434; c=relaxed/simple;
	bh=rX8WrMT3/fwSnY1ncEc5fkl7cyd2hfgV60f5ZdKlZoY=;
	h=To:Subject:From:Message-Id:Date; b=I2T5CiRjiV88nB/LBW4DlJTRL25qGqpDXSrI4D2xsiJxZdmrAD3kNN4Aka3MLvw5Q+v3GqGl+Igwpm1FcFXwViWdzI8IVelGzAdPCqCA805q4DM36IAA97CfQBk4qO0Pv35kqzCy+/ReiUx1dPp1p62lU+G0TETfjAf5naaBGAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0XW/hep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0XW/hep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81B4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786616433;
	bh=rX8WrMT3/fwSnY1ncEc5fkl7cyd2hfgV60f5ZdKlZoY=;
	h=To:Subject:From:Date:From;
	b=W0XW/hepu+8lK9EzWJ0wfrwSaHRBjk+UWtDjyIPQGvtOQtgyHiCHE0dOqtLqtRbJn
	 epFQpfJX5TlDb+CFVbgEdt16r67ne4/hyMywHeo7WoIjZSPtk4eZbRNRaF8M59WwPO
	 9AjcReAqQvuz3PQAAL3dzvX1XI77f/5ozDJrAd6HUQQBAIj8orgLKc6WYTfcuBbt3x
	 lYyW0Xh8y9sMmcAp9Jf4dOyyum04JLp4FYLP2KSumxUHV1PpgHKAbWlYg0KaYlq2T3
	 O0ATrJ3GfjchUqvdJD/SA+x8h7QfD4KYeYBaUNX9vZ9GJoV/QIjj8cGyTUlu2bvxoF
	 im5dTf4oyR5jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CF4C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661643367.25422.7407160477750046959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bcbb93085da2a6f3655c07437fc6b38640da53927e9b4e3a88931f1e96fc612
Date: Thu, 13 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786616433
