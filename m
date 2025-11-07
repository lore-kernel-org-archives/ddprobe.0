Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BE172623
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762481994; cv=none; b=T3UnSuxWZQ3rKZpM0bSDKGMd49hQ4KRNRmb5fwkkMmBEZty4FvSIdfNnu3LA08kuJEzP+WOaBxkMvs0sjo6Y63ELyPhVETFZHCGI7rM11+sVdEPT0ty223Cms88O4+xSKyV3LecKPltrCabPBQr1CsA7CuxjRTm8yHQFPhr4vQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762481994; c=relaxed/simple;
	bh=0JrYCUCalYug6mUptPsKQi6i2h+Bgl+tlI3N4EcqtRA=;
	h=To:Subject:From:Message-Id:Date; b=BQHBGaOAiWcSk22g0h2M58fWpKtOkOr6UgcBMUHLVYj7DXLGBboYVR9uR1WnxMRAqtPq1SrL7I1yA9PRyJ2rqpE8dd4CY5WFM0U+EBqD9Ked8BAPa4YweLfHyB0K7fC8sXjd1WT5azJ+YNq1C8XBUr/Fgw7Fa2mvKrrNOeUAC38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccTQDu1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccTQDu1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B7C19422
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762481993;
	bh=0JrYCUCalYug6mUptPsKQi6i2h+Bgl+tlI3N4EcqtRA=;
	h=To:Subject:From:Date:From;
	b=ccTQDu1WdkirbnXkBs57dIwYY7qTep2BTqp8yYnN67tldEf4znI4+wG2Js9RWMiuz
	 ScTJ3QJq1yf41oEStcy9NNE7/XfN7b+nj6WPB//RDGtkRHNYXx4bvaesK8CIVE6Ihj
	 nwc9/uf9C6Ps19J4Kpa65iWzevGAP29QFN8i4VNGbVi0MVYEIzA3BxsC/Y78mRnPIO
	 Utj52ObYUZ8DcxtTfxGYGjuYw2M/PD3K/JL/f1Rk6K8A+IkYsTJSBeqYiIgyClzkrj
	 ca2r2ju4UOMZ9qag5z7Em/cORIM4QIiXELWJmy78bK6ZkVfM+S9MbbgvE6nJZPj/DQ
	 QKreuuA+ChyhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E1DCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248199358.26531.1886553700491803783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff28c65ae33f4d611e115309d57fe81ffa004612230b9194d522138fc1a553bb
Date: Fri, 07 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762481993
