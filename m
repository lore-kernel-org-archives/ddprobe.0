Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B7284E1C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717536983; cv=none; b=Z7QwfKV4xa/ecFOqgp/Z3KMcMtfaGC8wJjYVLdKdwQXziJWZFJOz6yR9EQ4KxmULJCWRqNZ/TTLWLGvhIT6yquy/Sbb7HaMuHQNpDxDtbckK8RlC6NNaZnrqEcrkagZxHgQV1vD5NDtVfTPXwSzdXUcNtetktOOuAagp09FAWrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717536983; c=relaxed/simple;
	bh=7r017GO+3vZqT/A2UbY3A68hpL2ukacZm0NxzUIIcEc=;
	h=To:Subject:From:Message-Id:Date; b=mDLV3qbOcn+i02hifERE2rwg1Z0fRDVIDtGTSjwQCQR5yZExUb7r/xx54U2jm/24yFS+X9IE1Xsy+tHiuEZeULDBVs+qJJ/LnWb9n2pl3vQTiObzj6HiaDFvSPvN2v/yxiznfi0lsVYIcWTMwd7wQM6LNDZm73KS2SUsvuhbX5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rys+dHhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rys+dHhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4042C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717536982;
	bh=7r017GO+3vZqT/A2UbY3A68hpL2ukacZm0NxzUIIcEc=;
	h=To:Subject:From:Date:From;
	b=Rys+dHhbKrEnh6jejggfb9NhXv9MUvyJcqIgQgrv4S8Wy7tbYr1AYyQIn7qbsGv3H
	 NSULEIlCiIuV7r9fhoioYMdj6nIYT/2yA4bXfH0wiHY50qJAz13BjPm5hd5n6reDda
	 OZSpE1pCO/n95RQPh6l2Pjb603hEk9pMW2cXGgTuIBSDO1rzfDWWVtMgVByP34DNOF
	 v4QG9HrbNoPAJQdgYnGORH4dTiP3YQtmRZaRGOabpxSTl1f4NSU+3JT5j35eWFhffi
	 uw9WmGvF4oZwTZw8/MsehaYR2ZbvDuByhoVhMS4m0cwe8OWBaRO+K2XUKL/rm5PtVc
	 MPWAZmILwuXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13A1C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753698278.28718.6918536038026673072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6526a7af5a963922226835000437fec8de161085827b229c27a70d505ca912c4
Date: Tue, 04 Jun 2024 21:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717536982
