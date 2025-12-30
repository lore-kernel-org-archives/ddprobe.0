Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460A617C211
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767070434; cv=none; b=DnaKUER3Sm0iNT9ksvCltBbHxbHQY94kRaRqw29MsuPIpr3TGoOpgN+KSDwNljprL4eLvFf3BVeTxuLEoDxuiG258bTxTs/XcUvUPfr+m70K2Nd7GdS4m7H9zP9Hz8FqItKYAKK0aMTOVedU7TJctF97zFJNNmB1c+p8EZqOo1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767070434; c=relaxed/simple;
	bh=wNRU9rjyNw1t46AqfTjFQsmgEPjfx3tx9zLkePAXuFA=;
	h=To:Subject:From:Message-Id:Date; b=BZByQZ+hjhFt45IQvX98NjeZnKTp49l+A7S3NiLQnRE9r1z2Vc9F+KdbALm8h0tdhAcGGQTVFGolYSktOPidlsZ7pnEABamjSH6+Eh0H7WXOD86GcI3SN5l01DJZfnS4e1N/Z2t4jDwK7l7GqtyefGaUpaDk3qBIvm3KCvMwq6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIXlewvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIXlewvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266EC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767070433;
	bh=wNRU9rjyNw1t46AqfTjFQsmgEPjfx3tx9zLkePAXuFA=;
	h=To:Subject:From:Date:From;
	b=rIXlewvUfj1QcMxsktoPKkP0BjUZsWiNnKTpE5KRf3KKIodoAiGBfEhNkLl49PK2q
	 pWyareEX9vHU8bnRdMxh4hA3+wSoxNW1HDM3GIBuy5qDShoK0nPqB/gqB6e4k7cyaS
	 Pu2sAOsQ9qzegKANf2KqgpDlSNG3umB3w2YVpbKZHWghkns3n7Sz8vj8NzX2fGfI2G
	 7YYypSiEGu5pkqIdG3qmPEhGsrkvPhgqpC74WohdZGlcy28jfUMA8zFpO6ync+RZX+
	 vS/kztzTnmzTC8AzU0Jh7u9AOOBsTTY/UX6IUlxAP5EwY9UD0TYntP6iBAEIqSPLol
	 QZctkcbgfh9AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B9BE92722
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707043357.12850.16059759493860590952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad898df0587f19dd413b0836a7cbc26efaf6fb950d8727489c0829d608069627
Date: Tue, 30 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767070433
