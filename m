Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE6813D503
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756045795; cv=none; b=ZLM6LBT6vK/WoMQ18+DdklQZfYTbOH5UMLSKuQwNPOkfKfdVEPgsg6NLGy4dMpkvOtW4eqcK7JNgVBKrnR6OlAt3690NHE2u/mquostKlHYVhSd3jovoIZk/94+jtCHQHZEXqt4+5e6sgfmOAXUUkgfESKN5Av8wDdp/VWWTy+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756045795; c=relaxed/simple;
	bh=PqevQPQQ/049jSgfE7OcAk66W7eEuptLzznuX/3PO8Q=;
	h=To:Subject:From:Message-Id:Date; b=gEeJK6Y2x41hMvJ5acWngpT1c70FMBms91WoptTKHwr9O57y9H2L3BZYGm2/hqexF3RZDDz8qvyJCvx2ToU43EaK9tIOMa26X/iVJ9ppy4YOIb0np7GYevSV412zxZ2vzONwApOGySrxWfrAkonTmREN33FXVQV7SXJXZi1O1kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujRHF9Qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujRHF9Qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D8AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756045793;
	bh=PqevQPQQ/049jSgfE7OcAk66W7eEuptLzznuX/3PO8Q=;
	h=To:Subject:From:Date:From;
	b=ujRHF9QhpInwAfpMbhELr0Wfhp5rPLt+H5rhpo9PWNTZ1cYLeFXX3dJzyFYw0XpV/
	 rXj0ZOBYBfa2RqgeuXZxXKz4x85rJ8tweEbeHLOIKtrCXKnmnrIiDLHmT7NyQjFs0W
	 wVdaMhSjIGq0rK79NTGZZrVp2/fYGKph+Q+s7x44Hb5UAb6Rn3dqEps1fBTEC7t/PE
	 en8fY54ri/GESY8cqr6hzDf3m5Lzct/aN+MIsISPDtfpzNVgnUZ9a/Rk5MnKPXcJiR
	 vUcef8UBlg//o9AYXYBFNo6jCn1yGev9nWNbNbOZDJqkQNNh6PyfzxP89gK6TC2cmR
	 AzH1Ag7p1s+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95185CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604579357.31555.2877167250841739400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0bccd386ff2cdbcb96f973f601aa724b0e56c1d3647a0a87c270a7dc92e3bf
Date: Sun, 24 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756045793
