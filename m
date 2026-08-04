Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684AF36215F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785879034; cv=none; b=TCiXYmT+xQ4SURmiCavWDXPM4qNBOnEn91fswg1zCeMkP6KZbnuOfRBQB/QliIKpt1WRBtdwJx3mEIaL85WvRD4VkNjSqN7f0PKsQIWBcQ+NNuIRopQ1J3lnDyMv9R600j556yQI6RO2AjpcnmZMJllwMIhqNa1URofEboT0/sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785879034; c=relaxed/simple;
	bh=RobDeNQylkf+CvOuVf2cH5QcLpY/4NfMTX4xVJ3JgiY=;
	h=To:Subject:From:Message-Id:Date; b=JiZhQRA3D+IqsyVHxrfBcqPTKqzB3u52eOKEDhk1PU3UEB3JqNPopNvVBAKQqHvYVQ4arf0qAN2aQBqKS2rea2aO7u62PmClFsbxDSXPJdWe6WIn1NiQlh8O5E85oyyBksOPg9sS1r/qKYu6w/IbQJkmcMhgYeMo+vs89LUYnC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFLUE9V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFLUE9V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF58EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785879033;
	bh=RobDeNQylkf+CvOuVf2cH5QcLpY/4NfMTX4xVJ3JgiY=;
	h=To:Subject:From:Date:From;
	b=dFLUE9V/cBvTgIPk2yPkIKKMI72/8BIIo1OwErI8EkFy2uTKHw+y0xPZxIBVj319x
	 /WSZJaqFbiZ8CbvKj+Ld/1N3n+uiwnlGFTnVbJvcymF/I22rwsDTD5kKg1hpT4nEAs
	 5rZHRIK8hRlKjN/AgJurGQf2VXP1GDbXC+i4LTEcP02dV2P9+Ef1qkytP2yhnDV/x1
	 u7qhBF7TH4odv+EIdK1TRY/a+bu45lUWtAz0qwqlYNcYaXdzmZZsGwrzlX16vqnq4f
	 VL9ZJcl8BMJecGd7MZBBiPDKOU9kQgptcnwbv6Zo82SK2vw1oLBdtwrtm6LJ/eZoHS
	 uFZ783jbvaSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FE0C55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587903372.31756.9322059085067626088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daeb558753893403c1baad5b90754bcfd53c99cce46013611a49910506f2cb2d
Date: Tue, 04 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785879033
