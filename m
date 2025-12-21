Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB9B1DF965
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766328834; cv=none; b=M2BK0sJS6RrjQ5Pdbnq1oHN/7U170FIyAdRu2pmARP3XvelargAvJNb2nINLJR0lKdm6LSckFaQwe9ne2khfE9ptSgAvkVGBtOSIJtTUQqQF7P3f4Mt8SQQPMReUjV/Tb8wFOWG+hrPfhJp44vdB4UqPzMNHGWEgwTbyQMlS+g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766328834; c=relaxed/simple;
	bh=U1Y5i+MX5TYYvuWiEKxRwmlmrBNaJlMsvh8aTfAKets=;
	h=To:Subject:From:Message-Id:Date; b=VX8q86182aTjxYNLL94uB+vG543+AFc7JNo7rNY2yGHJLuJ4kQawFL+z9DgCT0OsaMvwixsGAVzXONq41TGCPOxanLQh5H7BAUhdi1RJIgj0C0TSiO7oYvvFO9D2pn4X6oLW6XoO701Zlp++DkmcNGDaRq6EYr9ubJFbMM3Ydrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULK8E8Yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULK8E8Yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A059FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766328833;
	bh=U1Y5i+MX5TYYvuWiEKxRwmlmrBNaJlMsvh8aTfAKets=;
	h=To:Subject:From:Date:From;
	b=ULK8E8YgYiEvTPUmouUvIlIf2mwzBqsU+DnBCLeXNYWufNyCbVH97ZDOphdVP5ETm
	 tkX+Bc4vm1houeie0LcriCD7CCcd0vOJKk7hNaHRzunItMsf8dI6h2IP8oXePobNkI
	 dTWnPABjTwAFliKYvkoM9J6tEDdyJHyE0eAqkfus94stIBRH35bI205ASH4y60MdLs
	 KeCoi6IROZxaedTRGB2EWhwlQ8IeTO8NOFaJk8GXd2LVlAdeeTjx2w80Mu9Wn1A7op
	 QRD/iGOHM4Qz4Xvrg3szxjSTRisgJ5O33lRDydWZMGJISG7zCHmXY1fSVnB5T1fG36
	 D5qYf66lbVG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E8E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632883357.15614.5836984482104585228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb0ff42a7c21261834c103cc9dcc8f08295050f18596c7b6798803f7e53cbf9
Date: Sun, 21 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766328833
