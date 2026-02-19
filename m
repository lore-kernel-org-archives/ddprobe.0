Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7EA1C84A0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771469694; cv=none; b=oUZ8Cze1HswTMQbuzQHEtw2z/87/F5fOnFizVTDfrSHQBKboMGwDJSsuiD1FZvzcQw2/X0ftwyXForNBaGRdLKj6JgC/IszU0B4U2EjocvlsbdyRZ2a3mFhOIW0idepS9NokfHfIIcNNg8I+9wpQd6bP4Khq2gTMHkw7QYBuuZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771469694; c=relaxed/simple;
	bh=0PLIq5ClyyQxJKKMHNGmpHzpSvb7MIwozCxFBN/JCxE=;
	h=To:Subject:From:Message-Id:Date; b=OjMM7Sr8lxgDb2yO6Z2VJfDAZ7uB+Lxo3AckgaZ+bf7yqww7sDpcEFl68pXmchmcFif8mLeCQwqA/4zKx8WsY0s2VRs6QIc5rRG4earX0971TC710paXA7EbEOLPmgD0HBbykWzZnFdGjcMq+r4rTZ+vxAoBJ9Vgd71WqImzf+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/LYCNfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/LYCNfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6850C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771469693;
	bh=0PLIq5ClyyQxJKKMHNGmpHzpSvb7MIwozCxFBN/JCxE=;
	h=To:Subject:From:Date:From;
	b=e/LYCNfqhu6TuJMeRy3FnoOxPTcg8M/bUIEEcqf+S2GTAwyUTyWFFlOaWn/+TIngr
	 UZhoDfE5dy9ewoeIrzWKvsoSdIIEe4sY0MPaGCriVAdHTA8nY9jpraUu7HbrAkxxBH
	 fmJIhOVQ7K8G+/I0jsn1VJ9Nf3KoUIufl7p7zzV4H8hEPEg8/L6yAxnCyXZACmBxEK
	 XghoTMx7hMGw0OGdDUMhDgqC24nCZ6BYqXz+fURPntPYJRZftRbxgClhz/TsvW9a1h
	 ereS0RRpdj9v99C6jaYiV45u2lIuH94nXFZprNJlpfAjwvvdGTQTps2SCmNV/7Y9oo
	 NUv63MXqM+xfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB6CE9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146969360.15090.2073017609864567897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff58db808dc40158c6cf9a301fb269a91d0d327643978fcc4150ef50713c04b
Date: Thu, 19 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771469693
