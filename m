Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D99F21ABA0
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748506794; cv=none; b=W6N9JiQ14vwJtBOrrZLv9CX3uBGYNiNk66Rxjwt6klyWkbkuCEP+2GRNIKYGgO/PaQqJBWYGwIIZo1lK2jQxZbn2FB1uAs3vuTqSRnF0eio0mO0BVGz+077zDft5wVYl63VdjwVT/eQhbjRwxuWMEZK5oxI2TxTvUy54DwAMiDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748506794; c=relaxed/simple;
	bh=ayaCxRihOiEwMxB1l9VyZZQ+NPP7GXgUe+o2Jd8dmq8=;
	h=To:Subject:From:Message-Id:Date; b=EOTt/MJJ0DCEergItuOrvHub5SeSSDg3hi28AjKLz94T1IKXq9sZfMjDO/pxO/1pfAf7QZPkY28CfrxZugfyJ/qJZlD1dCpvT9pbwv73Cj53ItcSKz4Ei3HRYfE1BnQMWTOuW762KKoXVTnWGTxeQzc+fBkylQcDFBb9gcXuSTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPaEOTop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPaEOTop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B247FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748506793;
	bh=ayaCxRihOiEwMxB1l9VyZZQ+NPP7GXgUe+o2Jd8dmq8=;
	h=To:Subject:From:Date:From;
	b=vPaEOToprTuNw3gi/9adI8M0AbiFDyvOd2IKbQ2VuXfCF+dL7s5jxWEmIStwtQcPY
	 rhakcuuhGoXx6McL7TTTmKFQvwH4/eGPB+pf7Ad1cLSJfnd2hJ7DWWF/uMQbXJNAqH
	 LkPFhoSgIJ8CzZw8QFd4L+7b19NPLrp5vBIp6nuwAlTXvbVjXPnKQmGlznmZzvxr6d
	 bOc2MEz4s/34+fgIqkjRHIJDi6bGSKyctbVeBA5qPPY7wSyeQeaX4ehrIGCvsv8C5w
	 UvmPLlk6Bdv2VNgNmwhZ1mqtmzRrECy67yoFSSiP1cHRFK/rJMfy616IrKOKuB6PdC
	 pLupH5iPGHb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E207C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850679363.30137.10642023122517422027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf79e15535b7b5a4ae17810376c8b07c4f8f45cb8c2d5108d9ad54577a09668
Date: Thu, 29 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748506793
