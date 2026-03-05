Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7FA2D7DD3
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772736894; cv=none; b=ScRVB3Zm7jeeM6ztpVVcW6N6+yWU60IVVGvvyH9Aujk0/jfELZZ8Zh7gX17V9VO69MKQSOKmDfDdsOmzq8uZ0PrDWYP6czRDasb9h/jT2QLrXJ0VdXkDh6SNKrJs/vbyDZK3shqGLwDA+BAYBrU2hNztYXKAP3AYzpPMVN1s9Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772736894; c=relaxed/simple;
	bh=r4S9DsXBOXZ25CKwZrtJXOR7vZ976w7GDrbFg2k4Ejg=;
	h=To:Subject:From:Message-Id:Date; b=tIKKFosJgsyGj1UK2aHrZ9FNbPDLqgddPwoBPVBQVoGeoHLH0C22QmNbAPb3ktwP8EUYUY+29yty4azgXsiDf50UUsfpSKDtQzTQFbozVclNkxpW6EEzUpZ4LG1Ku6gqgE2yKjTpiB2hyym3JcFdJR9s28rllCGXJiCQ+9Qq+g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gon7Rcxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gon7Rcxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD1DC19422
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772736893;
	bh=r4S9DsXBOXZ25CKwZrtJXOR7vZ976w7GDrbFg2k4Ejg=;
	h=To:Subject:From:Date:From;
	b=Gon7RcxtA9moZisE1J84vgR//+LDISxnYYBCdDRwUukWqEqtM5wT+vo2mKfbTOQJ1
	 bFkWS/IquBI3gwTzqiUY2Eum/8HhbGgt7l1bwJaqmsFCuUumrowLsWOh7Ge2wH/sSp
	 +dWJpVLXa/VkbSSM6cX26EwucKXsHl5pqh9VpGtgh0N8c0BOJOTn6IAATntyexegWt
	 O95sWIqm1d9n11UjMuhLJYmTg1LUl63Ll9yAXhTc/K1iw6+oIPYJTDpA3vAxo4P98A
	 fFZsuvIn99K7MkwufMZZIoqUIKZgdFeDe3PEFmixs30qcYlJKTIgEn5M5dQ/AcAjCn
	 aTX2XXM4KHYbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08BDF47CB5
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273689364.9042.1961752507429921401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b23ae35a7e29d9e2c955308e369f30e9dd15ba025466c2904beced14afbba9
Date: Thu, 05 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772736893
