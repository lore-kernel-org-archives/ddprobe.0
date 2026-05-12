Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104CC3CC338
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778602834; cv=none; b=OEU/a5978W9M/R4wfUICQDYx6lRWwpBqWgvFErRKfQqNcQadCHDaCjrZrgpjoUkiTKJqAwJuLLFU6554+6r8daxMM17xN3OWwJ/puZsc9YkJMkp57FBdU1jU3u9+f0F4+dWUOpnPrWjyjNuuwJRIDR1T1+6vPaKs0SuRHv2hwsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778602834; c=relaxed/simple;
	bh=6WVtUUKg50YxG1mzuqVOUgmH2z8XJY4ylS6pAHNYl68=;
	h=To:Subject:From:Message-Id:Date; b=GpH/vecjXF3SNKr34E3id4bhipiLKwaiuJvZokT5m4YlfzBBIMNx+yQ3IsbDXx/7ziU2R8mGKF79MYvf0T7l9BnSLB6rA8cFaSmEHd0D2RHl33x12BMQd7d9JHdFzZmjcZc073QsYwhhFuJWoKftAWsHRhL0E3SBPdJsABEhG2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4jz0iED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4jz0iED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72D9C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778602833;
	bh=6WVtUUKg50YxG1mzuqVOUgmH2z8XJY4ylS6pAHNYl68=;
	h=To:Subject:From:Date:From;
	b=B4jz0iEDxlct/FheyKKorfymJn3X7BZD4rwKKgZAjExwckDekN8GDxM55oCTwyTwV
	 jOPEBkEe2KG+dIXLrqjDSaLtZIrratC/95Yxxpg8NMvBFNQ3EYWcimSesBWk8/hwrA
	 mIQT2JPjv1X47UB9vTanO9oLcwHYd/w03Xv+Pm7fj/M8oXkEG/aneG64lLCs79Zoa5
	 Hb1jsuSieS8PsKGWIU2izEoeAdQZKuwtVExbtQnie3rz4nuVkzxFduWuxjrPML3Wpi
	 SlP37Nkq38OFKAU2H+nvpO4yCQt+Av3sdfpLElGSoqdX7lISq381f4BwTgV/JwBWEB
	 MqYJNNjzPjlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B18CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860283368.18982.18348766398906130866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ffe03abceaf74abe9873da56f703c0e8879f671b4aeb7ad3f1e07f76ebcaa5
Date: Tue, 12 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778602833
