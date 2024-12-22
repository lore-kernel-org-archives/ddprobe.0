Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3495C1426C
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734893754; cv=none; b=Qm2KN9QB27BVXL6vmgb5iIP4YXL6K/bCzJ4rqZFrTm9zT+H1XNNVce+9k/9ZxKFH3wHIrgUder0guo+FgX+uRbnSeqOGSeKLz51FYk0Rdmi2qfndYf32vV7ptORQ41xlDHLtgi3UOpuoL9Hf4RjomMPLmjkwjeZ3XCSw2on9vFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734893754; c=relaxed/simple;
	bh=FrBkgcxl28oho5zO28NmJE2OUPwp1jLhTTpMBJgJDKE=;
	h=To:Subject:From:Message-Id:Date; b=BxOiyRPR7Yy7dNB4EgWTRS2u3H5e5FOjmgq/plpI0pV2Ouwu9YfG3sRXb7qfQy3g84XbxpqJJ/d9MvPBRdlGpIbmSEZUMInKvSg01TC4RW4J4NdJg9xxnAqBRA9xMmSDtfceXXIlf23U+SMQeranjspBf/cD97P7gY+X7I33THw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjKYiRRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjKYiRRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB297C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734893753;
	bh=FrBkgcxl28oho5zO28NmJE2OUPwp1jLhTTpMBJgJDKE=;
	h=To:Subject:From:Date:From;
	b=CjKYiRRYh5gKJJ2n+idRLFRuvlB9slhhBQ3Qw7l0JXjy2FREBuBEF1hihoudojh4Q
	 +ts2aWXHfxP5qVi6LI88l2vmMVcXBfFS85DeUDDJkdlioLT7Ry5xmWg68WUuVkHR2G
	 jnVGLeaPbcnP9wJWhwtRsBuGFgaGoTMx4lmAn7f4pboZZf0o8JZiYpWaKtzWvZeKaO
	 P8CxF2V+pf6xEvDYg/nSC4zyYNHRkWTy6hlixG0kHUNfqT2Sef9OLlwf3al3rpnQDU
	 XkLNvj1wVlH3hnfOLr63G5lSiSOHzodoSHfP+sh9yCknMARHvlaPrCyA0W6Lfw59c0
	 ac+QvutMrldcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9BAE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489375362.17621.10875861837954084874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38df2e37e598449326ba6a47181595800b87366400d5f04f3b708eab955f3ff1
Date: Sun, 22 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734893753
