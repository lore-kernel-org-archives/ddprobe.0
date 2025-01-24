Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C311D89F1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737754554; cv=none; b=g+wVL3qu5X2z6KRl/3Lf9UUxcWMt4W1VDSyxGX9DdLsfO/xCEfRPDNnQ13nDi06R82F7iIIKA36zB3zI2NSFakcTN+RF0xFmrmviwb4rUTdMsY0bLaKGFYj2jFznxYATl+yZUaTu8h4hSiE30Fj92xM6liShti2XAaT9JyJlY1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737754554; c=relaxed/simple;
	bh=XjajCZ3etG23lddOz5u3vaP5QlQhX0VjE8G3wXTiT4o=;
	h=To:Subject:From:Message-Id:Date; b=Zuy3KRE7iW2N73pBLoLlnOFWbAjpf9TWGJs6OD03Ub+U59FaRE/+4Z4K8RFxCceTtAaeNXMU1v2ifIYqud17FDCo4wYsrs7DdkUMFzDcOBoLZs1s6nHUZJc+g0ONTPnAU0nmH7lHEGS6wBVE4Aun49YBgZMtIP7T8340Xt58KM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG4hvCKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG4hvCKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC050C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737754553;
	bh=XjajCZ3etG23lddOz5u3vaP5QlQhX0VjE8G3wXTiT4o=;
	h=To:Subject:From:Date:From;
	b=NG4hvCKvrBN9Sb//PrWXnnHvQZCsoKEdd2PDCLbtXMgMgvi9gVPnwzDan/FgxDP2a
	 7w/61GW7ecIGEQm+x/sbPopelB7l17o5IZSC3C9nn/tAWc04oDs0OFsC0cSv2QIQ+k
	 cEuT3XdMI+Tk7kIJmReEPmQC1Q0/6hH/yFcF4PqjsMeO5uqwmLTzBfrMNCRsQvZQ82
	 fLcdioYUdWLTZ7Xqd3IDE0PxAD0yJgcm+ylPJ10j9kxvXUkoTD8YTcZ3NAsvPFV4hm
	 DChmpxyDkQoC59HS6GHIJ3NyC8X5mkTLXdjxA3Ll5cleiUCfNQ5tfTmb9HxKLGXFYB
	 yI72lT2jn/i8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DB7C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775455374.11735.11363929320000140795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4373c7fb23a5702db217429047e66691c2278116c2996bb514b27501ecfd66
Date: Fri, 24 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737754553
