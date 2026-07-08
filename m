Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B6A345725
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783521514; cv=none; b=V9a+GqHqEq0LqadXiMQC28Cl03WkT4ASa8yOLmePJ36T3O+xEijuQQmm4b48NDVClPvMoTWSuGL1KsLcM6uKh2FZUjNYVQS11z2z8P5LrdcP1FMfecZMeVoBiGuTGdX4DnJPdH8IUZE58Ph2pCmhRl3ioRlWma/8ugzvnJ+hWDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783521514; c=relaxed/simple;
	bh=vh9Y1h44/Dxr9Iw3Ykc9tmWDpb9RSXwIVTbctOmbbnw=;
	h=To:Subject:From:Message-Id:Date; b=VNa8RD8WCxzjrqIfXeeqNnFVATYShZZQwYjRTNb5mnI2/W7E36EzeHQnAXADfTz76a8D4WL0/rh/Zvj/HZEvjzEtys9JOkC2Nu/NceJ+4GV/Df9CC5px3Y9UU1FqUXm9R6lNRxWW8jsYmDHRY1/P5CZlLf8GEmeL+RiQhS/bh4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxnjRwu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxnjRwu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE608C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783521513;
	bh=vh9Y1h44/Dxr9Iw3Ykc9tmWDpb9RSXwIVTbctOmbbnw=;
	h=To:Subject:From:Date:From;
	b=IxnjRwu4DAMoW7vTgpUD0vFmzHsa0p/hntoJ54S3H43u3UwdHSeJ37LsX+n4rFzbi
	 6Bo06WrY4qNTHi/PEZOj+E+KYS5SjWeP1AE1WkkqHUR9dW8d6knL6wZK8kP8eM8Pge
	 P9qZpIS1e36Wyui9P7tG/bF6jz5AYVlf6jcRWpfyC4Gh83ICdFKLXQLK7sDil/Kuw8
	 h0r2B6ti6JVMWfsYAo0g6K7563MzRVH8uAekm/22MnxqEPJ+ljlewqxSFh9b5sefnn
	 8e1pPGVGnaC3phyobAmzE/1ZLRmpTkCssylUH56CeVUo8Ig1Eq4w2rkOIIAKpsy14w
	 q3dV0qKpcqcjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB16FC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352151369.12853.8801757177308791572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb527ce788df85fa778d257359f86ab213c3d07b9a3620029dbd583ca9ace39
Date: Wed, 08 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783521513
