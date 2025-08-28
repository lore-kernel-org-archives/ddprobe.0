Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B514A4DB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756396794; cv=none; b=BaFAmNbeool2S6mFZp4Ie6jb3qlZK+85Vms4mX45kIH2xx3huiR/pSroEsE3lSSNwMXQQYWcjjxqTMNYNjkHjdpjR38Z21+7pIup7NZnsoF2NLTTxB1gKp/wGyxHAmmOE+at52DhSKedIJgf7BIkFvaji9NmXU39vDO6D6gNXvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756396794; c=relaxed/simple;
	bh=q2Qk3FrM3ECDSrJLzg5gmCeaEGfrxhu1eDKzUJqbxpE=;
	h=To:Subject:From:Message-Id:Date; b=Etjf+4aFJa5I9J/DT/wBY69vIpoyDDkuVJvbrX1OVNkTxogTiSUrg/O0uuAMBCmfkrpaE13eGfuWV21CZkLe6GdqTz16fjPw3yQUlHF8VdcGcgxbjFRhCOkfMo8ozfcg71sQbCQqpgG3Wtp4oJsnfhRWJlsySHU9iFIu4sSFEgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQxt6UhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQxt6UhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BCCC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756396793;
	bh=q2Qk3FrM3ECDSrJLzg5gmCeaEGfrxhu1eDKzUJqbxpE=;
	h=To:Subject:From:Date:From;
	b=VQxt6UhQQZWmviLP9Ua0pmzGqdo8SjvVTYGh8gTuRJDMVfGMOLgbn+2+ZVY/7bIHt
	 7cVOw+7V8jBjnnId8PsygkDxIAYTu6wpISvDk5fCV1rDf+GRKO+STNDyg7H/oJgQZ0
	 eac9Hfa55vA9h82jUR51tjrqqfW2uzeBTg+gDMpHbmPUtsnGm0NjFftztcshRNRJtv
	 agpIxiiQfzEDyEaVI82tz1EAGeCYFWUvfYwV/XkAcuDj6t+F0wO7z4tq7LOnWeF8F7
	 plLZNGGECMaYnDOljGUPqAbxPwce5WDTkNgok+IfZ7B14W7Uho7he0qYIVPkrdolZh
	 3fFHWsRXeMTLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC6C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639679357.18167.6643937779627971360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185620775700cd33c3fe9bd5191744b43455ddbf294f246c3b615b55712c463b
Date: Thu, 28 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756396793
