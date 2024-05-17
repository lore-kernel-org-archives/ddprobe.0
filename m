Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F0EBA29
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715919143; cv=none; b=nrvQ1ntnQdOvdUzjnR8lWV1T215MDV2yCU51QSbeBtUK5wwlKTi1Qo3tS8HzIEc1R0e0chYd9B9hqAL7W3paDLl5F0leVLpWt/H4Is6PCRtZeUmQQJPqs+zm3wEBvDEWQf+f1GEkPTNqKldX5/obWNjtM+yLNi2uB+DIfNS4Z9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715919143; c=relaxed/simple;
	bh=WTVdKi/7sXipLdXBgx4zgONSMJPI7X+bHUz5OpdcmGs=;
	h=To:Subject:From:Message-Id:Date; b=oinofEtiEDa7DCqty2XvSJwqx6F3nLDv06Wcl+OaeFvRsMtGUYn4qq5wVJ2Vwmez+fL20vYGWIoKgL89uVk/bKaVNe5sCVs6gM/QzrUrEjmM/cirX2kRZ7Oi8hGhbTQ+0LyEojfqz9oEqnXXBcGG2wYCvlIvWt8ARKoaEuOM0G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZcoXD4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZcoXD4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF234C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715919142;
	bh=WTVdKi/7sXipLdXBgx4zgONSMJPI7X+bHUz5OpdcmGs=;
	h=To:Subject:From:Date:From;
	b=JZcoXD4eHYlkv8U4KZRgliz09WpabgjCi1b4YBHu+7PgvOcas7gVg50CBb8n/GpQs
	 2jgg/1Xwqypu9BP5SvRZCenUfHBd7kTOLA0dyNX0FvKGVz55APkKwsVMyfvWWCPyVB
	 XEB6e1viX0IGtlWxrb6MZooRaxHOtAaFmqgCA3vHIz5kteHBQGnH8JIixVtseqtZyZ
	 nGrImRucG23mn8t3aKhdxAKp30Ubn59FRyDqHnz1hgSSeuVVsEsma6FBnpQh3KDIwt
	 ++J6ceYBXNLj9tsYCNZUwXojFLd6e7DqxUcQUOsJYDRUO8bmUXCxIaT1lKMymQrn1z
	 +rnuwHY/9QZ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72C0C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591914280.19179.16843365661094738760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124c87ddcaefdeb837714e984b985883f21ac44d8f7beb31936ff48874cdf73b
Date: Fri, 17 May 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715919142
