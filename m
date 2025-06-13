Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619A019C558
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749826794; cv=none; b=q/iO1SYqOUO5sJJv2mKifCqkhP8Qq52f9E699l6Oz9A1I5szkIQQ/Y3DdJSYQQAKGPKiEs/to7VyTxTaEDmxLAGe9UahpRp7DURDCQf5AZkvvj/cT8O4PA8FgLCNiLK6qVnthWfj2qrfTMT7WibyBRGusVFgiTfHgxLPQlzlBXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749826794; c=relaxed/simple;
	bh=zl9F4xsA5pb9TxSxLBP2+gM0Vkwp5Hjprxer1M0mtQE=;
	h=To:Subject:From:Message-Id:Date; b=K8hm8RxlkF29odRPaFQiF+ehRVWOI4DgPJudfDSHklYXLK252LwEBylMSOw0jAcdjp1eG3mASi6kGxD1+wWzp+qqFOkBfH6HHve3K9bXscT3kjAj4NlQDlwE4+vOlamSJmcRzuYsiD8zQkQTo2+fk+MfrZBnEQeShCq/7qlNdnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTQUW/xV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTQUW/xV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEADC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749826793;
	bh=zl9F4xsA5pb9TxSxLBP2+gM0Vkwp5Hjprxer1M0mtQE=;
	h=To:Subject:From:Date:From;
	b=MTQUW/xVWixy7HHz6pVJKNbGvTu3uddi9PsRiDDiX+GbxbzzIGEjFIm9vaYQuWFNN
	 lbyLMFAtcBqS66t/uVeyX4kIVa1lD0hdXOfTeRSD8Bz5kGNecGCv4yrzOQ7bBIg8Q8
	 GJSI2CnnH8bdliHHXfJWeJ8X8AVhQzELaOaXTM7kwNinzTzmmez0EcqdDIkqzX+1zq
	 s2HEgUP3p0wM0yTcKgGzenRC8RESTyi/2GvixN8hQWrHDIQpEtINPf5t1/JWa7ZRTU
	 Y3K4KVspzf8p79//E/ln9rXFZNTjFukgZYyhVqMnghMJ3AlWjxdrY3ZaNAJkhHAdRf
	 8Vk2N0E+kaOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB8C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982679357.14202.12253721678387245302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074de3225a325c76fdcf3add1317d211e8e7ee800202a4bbf0dc4e175d296741
Date: Fri, 13 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749826793
