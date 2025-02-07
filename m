Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B90D2417E7
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738899355; cv=none; b=H/a7DbK+Y2Urxk6O1tv38nPw9PImyVIly6PMX7hTggZViPGQTboYDfeXO8sO7EltwFxdWtFMLWaN2jrfYZSgndaIjXLU4iJq51onaiR06MkbHCkYpDXP8WmaZDQLKkkU/a+N3iotHhdA64Vm7kIXMCOroGLt/KBtxI4c43jyGVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738899355; c=relaxed/simple;
	bh=fBXOCTNpTLuoji2vEgiXB5hkTPJCErXU19d7HgDVXoM=;
	h=To:Subject:From:Message-Id:Date; b=S2NfXywlH6eiUMjBo7pYXVqu0rk/KN+LI4kVue/GpqdBPfz0LXJstNH+FhvnlGZTdI7TcFjSN+6wEQo6hC3SNrSyA3g8uS7voc/9AdeZnTB2Uy0elbQ8AOgmTPgsCc6MMS3r4MrY7kLt9teMME59IEzcOv+RhMpVlMJQkJAVsNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR3uQwfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR3uQwfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C921AC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738899353;
	bh=fBXOCTNpTLuoji2vEgiXB5hkTPJCErXU19d7HgDVXoM=;
	h=To:Subject:From:Date:From;
	b=rR3uQwfULr3kBHfEyZm3Vr1WZYPdqecYY9w92qAKaCvbjJ2EPydrrbluyg8nge4Oz
	 DtbIzKphAb6Xx3mMb5w3jqtYGnCXb3LcOyM0o+PmOIQZOZl6oIm2Kg58KFaI462vHx
	 whWWcYPIAQpE46SKBEano9c0Y0bxy5NMaU3vemhc/89k3ZFaK+jvmxF3X39000sx7Y
	 hgw/LTsaIPJKB4hXI7A0+EMp+hgvd8dJAPLJWATQRvDLkiq7hX7EJ8kA/gcrnlekG7
	 O5dvXac/IhUv9fI9Z+XZ9JMqVtlIl3an0Ky9sdzmtvF8iN+GV4jaZcptx6vFvGeqm9
	 BQbFjm2HMd+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3B9C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173889935359.7107.5345170811603292786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accc09775e046d6417111f88ebb2e9a02809c8dbbcb6103180bb553f485406bf
Date: Fri, 07 Feb 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738899353
