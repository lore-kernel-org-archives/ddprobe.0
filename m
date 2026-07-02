Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40150451047
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782992914; cv=none; b=AqZwRF3dTIEZ7LzgQmYT1vc5iiEiu7OEBCdWt6GrlvTSOIMpYgi+oTxhoXJGEiYyiF1iex4IpKrUi957Z3MTM66zXEzgHH8WKOy4qycoskbKUWFG0nO5dTJktmDwNO0emt1q2t78fCiyc1/tHh7vG/1JEYKwTOuIrnS2bAqZo3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782992914; c=relaxed/simple;
	bh=fK8pN5T9dBDxZk5/agJrNCgWFzyPdVed6ltNv5vylj0=;
	h=To:Subject:From:Message-Id:Date; b=Sn59eQkrvnEnsd0iHctCzsBTiAxMEqQK8emvGs6xkrJABRtt3vEFFP3l2vjX2WvZBjif6TTPp+y8hLggDUDqeEjBrU1aZJpSRpeu2JP1F3R9NbOcu05asqUWwQqdvEVqx9J1YuSXas+1bP+OvdiY+30QkgCqPxCp1+5OGLckn6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR9V4wHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR9V4wHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7206C2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782992913;
	bh=fK8pN5T9dBDxZk5/agJrNCgWFzyPdVed6ltNv5vylj0=;
	h=To:Subject:From:Date:From;
	b=rR9V4wHemldFKLTEe/B5TYILArPsNbfsVRIlMVo/9cd6SecJ0LCtnPNYcDejSRANT
	 KPR4DalZuKEiRigLOHZ18auMDFPIQKlPd1kdMeP7sECBIatBfOCtlk4IAXuE+ZAOLE
	 0hkMi7EDTNarcTU+mYSEsxIOJ5zlWUjbk2Tq0X+bG8AE9UYlmagdKm2+DSPc2tYGkD
	 e0O3XivkIUJG+PhllPUa4hMGsxAUQzp4HBvCYg0qauJwVSpxijKM3sVdF9qWm1vZZv
	 OwX2QxnmI0/+gvL881wFpWBES38+QpSR5sSxrG4QZ4hUuStg7ZRGAz9MKyevDJmNi1
	 vvYCd8xJnYMPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8716C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299291368.27618.16865251953069823185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a6e4306149b5433f17c9510c93bbc8aa094614c3e802eb724e89135491a501
Date: Thu, 02 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782992913
