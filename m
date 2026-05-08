Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332903264C3
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778267854; cv=none; b=Ut+HBRBUB2AyN95zWzsSg5V1sUh3OGN6NwmlwcuJZBPwbBj01TF1niG4PfWPduUer/fk/6WoS5PjfqVfiSMPSCq68jFy/JICZfIjkc2P6qXsl4e5K85AXapI63CKc/zU752VPmGhYZSIHQAd9ssWw0LrGEbWlNty4l6g51VJomY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778267854; c=relaxed/simple;
	bh=bjc4ouzUz80wQ+od2+Eu8qke/BMW9pIbo+tGlzidDsc=;
	h=To:Subject:From:Message-Id:Date; b=Tol+2naqxBPAl+aLashNYoNpbbEJDGamGosCoTD3oppDDxantgw312gGP4UbUF5xgWE2Gmccw6eubzMcKatNM99c2Q+avT8QcRnEK74wGnHLvTGbtF97mFqZrJ6pIJcv9kctvfDOyYdIDEQ9ohyi5/LL4DLFlJlZE8CloiV0J7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkNlp75E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkNlp75E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0628C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778267853;
	bh=bjc4ouzUz80wQ+od2+Eu8qke/BMW9pIbo+tGlzidDsc=;
	h=To:Subject:From:Date:From;
	b=XkNlp75E8KWdtcZyCOAm9zc6R7QzLbHh1ES4RCTwESLqtj0CXNYwR4d+zzN5WiJe2
	 S5mlwgIRn+eImIjvJzOW6C5uqGy8RcPSl2I2qEpjK3+4qmC/pD4IF8fOCJG3EPeSfJ
	 lIyKVTSKR3ne/1rF2NRfEUVyupSuuBNGCCOhl4wOlDiP0uOswW4vk0jjNWnrfwkPqQ
	 PdIb8xvxIvAxii+w81klPRDcq3g2iYgwH7OzvQqYcs7scrz5jZA7KFFLZ9w/ozzQzi
	 cJH7V5ccK9xtOgxIwngbpf/YKF4ylX4TLflD8PiL0tNq4PK8MuV9YOHh3Jh4SrPqxo
	 rCeZzogHQY+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2334CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826785369.17250.3668278800005826441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5083b936c1cb1807d3a38121d978c57a3a951430994f8fdb69e8563d9d9e0d6f
Date: Fri, 08 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778267853
