Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754313C5544
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781451394; cv=none; b=i1CnqPeM0WeM+hE1FGdZ3aYcQxbDP8HrjIiqIE0X2mHIkHdTR6fPOeH6Uf6qyBHGDTgQu9OkkLHSKo/jdS00OkIjlfUIcWZyDPCYCxDJojkm9VhvLm5XRFAn5MIobRr0Jy2XAZOCah5aPj66/RbXnEmDmd5Oj8sAzYiW+9MT+C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781451394; c=relaxed/simple;
	bh=4XyW+6Mc17F44Cn/yV/9cS8n+R+yGFml79WQdkNrzas=;
	h=To:Subject:From:Message-Id:Date; b=oHfzFVFePOkAsHkyKzBjGC3rYaYt4zXMiwcctXro8NTx4Ugo7ZOQEG/SiZO1Ix/ki/cAPQa7Ys3k3r3uieCfp0e58wM/sYNL/q9qAa1qnhnYWM6MZkCLJO/jYerj47BA1eNJEYrClTRoEGmO3DFejdAdSK07pLBgFX/hV6ViC78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIiPOcG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIiPOcG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BA1C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781451393;
	bh=4XyW+6Mc17F44Cn/yV/9cS8n+R+yGFml79WQdkNrzas=;
	h=To:Subject:From:Date:From;
	b=VIiPOcG8/KM58ZW41tKTP+8Mm8MeWnUMkt01Ty3YptLR/NJObYL8zPKN+e/zbAq/e
	 WOnQTofuLbK2pTDodOASK7fzIU8+kBnKIXwuBRiU+2doZIIelPQ+1ss61GDFSGfnAb
	 88sw59lP1AmaYxg/hqgeKq0Q638JnkXB+L01G3X07w9pkh8/TVJAdnltFQOtgd91L+
	 a9/5WqOx5hcTWLGyp6hvkrRIcm919WT5U1qdxPfuqWv49ZFMMBT1ARS7Onth2NiYBh
	 88WHmMlTNMe5q0vsoV5i2gpK8awl91srMKXblUm7+Rf62lrag3+vSIAV2RxuZ/I/TP
	 AU5D+zx52ySHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB77ACD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145139369.11364.14631485015764943492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1948178986ac3f0282dbc4adbfc0cb7df8fb78663841dd18134b1b602983672f
Date: Sun, 14 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781451393
