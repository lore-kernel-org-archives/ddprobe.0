Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB13272E74
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753822794; cv=none; b=Tnxkzq2y+OawZH5RJYMJAZRqimLWIdvmqMuOg0+EpPXKydULlZD0hCShs6c3MhsLeVj79SnhyxDuGbFB97adnvWZ0KEHm4klZDFoGdCMsQgi8hHN/m5Ab4ptdsO609OnrtQUrhzJSaygHM4rTF5NJN0KrnrhzdLeDW59lAyfWF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753822794; c=relaxed/simple;
	bh=zVkxTJtC21D9ZMoRTLh678wJPB6pnXuPCYETyhb0kQI=;
	h=To:Subject:From:Message-Id:Date; b=phttdFEI08vSj2A6qdUWxefUDJ1E2zz1PaJUpNx3/4dsPzb/FDP5Qp19di/5FC7GCy7AijHBtodBXKkTiHlz5k57MIzpX9Y7BnAmRAgFh5XwCYyv9jv6N+/Rv8j6xHZQRMQRf1FqxHjMD/4VprVZiBlD3DXHl/s/eTgARM53c98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZOpQY3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZOpQY3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3838C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753822793;
	bh=zVkxTJtC21D9ZMoRTLh678wJPB6pnXuPCYETyhb0kQI=;
	h=To:Subject:From:Date:From;
	b=LZOpQY3yNQ8d9rEyaXQaOfWESPfPzeuijC4bBJYcdPn1lW+fSXrx89dUAS0kJkF3i
	 G8QnkNf75ljEydk31BD7GQu5pDJaUVNG+TeNr50wAKMVCBkWM0tXqUQgPdd9KsWHt2
	 9hk1uqFwSnxW7yEf7hcukLHKQYocDmtIsm3x/BH46CjmfyytJ+CjyI8ZQvs9x2AL0W
	 WTKRUqbtPpZGG+YQtgAcde+oEfqe7ekVPFHfUq0lCIJuQqFV3Efq0PolRgEEWHvQBc
	 hRKy83eZiSJnH+Ohu+N0DQmX6JaS90yYXLfc5BYeaD7a4tlQH6S5egEPolqokySr+b
	 hLgT1F4krGxdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE2C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382279357.444.4746954514856536179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29e09819cf42b6522e691d435960d68bac1eb3560a24df7ca63e1d3ad840f05
Date: Tue, 29 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753822793
