Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE0D13AA38
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726473953; cv=none; b=vE6UORK/g1DhFq1l1k9bjBB4ybaPmCEd3iMRby7CYPAZ4PqpMDRfTwYyca+KjqG640c60GmvIA7rHfPzW9vPcPU2UZo3tFhyjjc0UR31SEiJp3NRm/kdsHhVNDaXiZ+6Chfd3sBclFCMes7WZBJF0H4TWx9SfMzkzfzjsaAuzDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726473953; c=relaxed/simple;
	bh=DEvTfVv00zbaF+bwgoK0MDg+5f4DLrD5/3rDhJBjSdc=;
	h=To:Subject:From:Message-Id:Date; b=HKc/EaYCRPJ/vYm9QbpZBbI5jgkFxPaKgQoXTEiNf8s+7Fze3bfTEv0ACvZMx9eV3Y+3i/QFYSwyDhTqrYk8F1SfUbcWXVyQm/jxhGjCm8566E9XaBX6FdmQ/HXt5Yv9/Mc2IAxGePiifxpjOxVROQqGun1p+g30V6boKGfj/TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1uFFFNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1uFFFNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ADC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726473953;
	bh=DEvTfVv00zbaF+bwgoK0MDg+5f4DLrD5/3rDhJBjSdc=;
	h=To:Subject:From:Date:From;
	b=D1uFFFNz1GSsIwfl67E5B/Wsbvt6B99kEQMfoiPSIKyVQIR5QRWJU7KXcUivyZtrv
	 KSbyVij5IhROMjeo/jIZJ1LXvcXamyws4888dhulPBuzgRvInjko1tPuPzhX5XvKxs
	 E6IxO2jWSMhyOWwLs+RGoKjR6qgEgOz+NN/k7jYXP3sH7/Oo7gTaKcZKHjD+OkzFsm
	 5AbcaZWOmqG7NS4nwrkre48Yy4hYNG+iKEswEoWrhszaauwvsUixl8HqXJGAGqu52Z
	 gQQ3Uz5wKsrcBX18Bvd3M6690oXgP9+QiKsLW/V5rfpKPqubex8Om8rHAWFiHH5aUq
	 DIocwYJGP2/mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973D7C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172647395360.28882.15030612097255864236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55913975ea832229fcf4d9114514f104a44afaae65acd874984c95becd4e7782
Date: Mon, 16 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726473953
