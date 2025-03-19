Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5037C8F6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742363394; cv=none; b=O9UNKOe5XqanZXf2nKYidBDtjb9T8SLDr0KHVq4DrXg9xXaORMu3VZFtmMV/Pu5yKdzwR3cZEI0hCL9MKwB+gLOVXejVj5TisKnw0052yx64IGC3oFhtFcG31GUklqGpmIs7d+rKpFtrA/QoVRYuYoXHB1nhOOFmezgX+7z9ZEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742363394; c=relaxed/simple;
	bh=zupTgzc/wK+8Kqss5mwSS04/Y7gsRTKyfepWFW7Zl2o=;
	h=To:Subject:From:Message-Id:Date; b=racH7OOUwOMH+SbN/nIrDLmCKMo2rS8HB5mR0n8ojDROXKBc1Gb13pXgImB6CgyRdZ5IHRMLMxxBOqxNa88+mAmQDLkLCsphgQM+/etmmv3SRSm/REzctBf+D6iZlL1QQS2fm/gbFQjHXknCPtLbPvESKWEDRBbVvHX4HZXU77k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YORs0yo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YORs0yo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB83CC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742363393;
	bh=zupTgzc/wK+8Kqss5mwSS04/Y7gsRTKyfepWFW7Zl2o=;
	h=To:Subject:From:Date:From;
	b=YORs0yo0XCOLNWs4FmMMmeli1MGpNZYRsO/iYtBIrwWg+RhEt8ka/pEwnbGZ7Ljo0
	 59pjTy53wCsyHppJf5lecINtWxekHKnSM4xSbvMiiay0I8ZoXrXGtPfmTnphl0hCMU
	 AhzFoDNQ6uqVAwlVa6mN3e1Zd3OcJEAUwbIjRODdekBDBNNzsO2oCTI2LwmGQa2go9
	 sCmUFcRkVRuuL8VXQy68RF9VTCGRP7A6svubDglCe+nFk9e0o4ajHx+Wj+pkToUghw
	 DUaM6g7gTByay+GS/Hrn8sN9ez9Lxa1R+XM8akKJjSmz/sn+O9eTKO2tcePk1HOPuR
	 GDO7O5DdUMj4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3D4C35FF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236339366.13788.7931983659993364965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338efd5606cf5df906bf9d4de8b2a091a32c3fb73932d2e3fc8cec2ba6a1e86a
Date: Wed, 19 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742363393
