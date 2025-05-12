Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20911A317E
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747048793; cv=none; b=mF7sw5z0At9jlxxoUU6oabD+8Atk1M2hrX0YFZQrg/iH8r8a7YUBH00HvX2I5oswEHEFQOg/nQq5AvMBkJWU4+BSxw/vj1LH6l+Gyy1YqeMrUGyY8hc07FvoDmfjiDEuKtQyoTpBrd0SQMvmTHr4Q/5l/AxQ0PWvZVIfqL00Hcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747048793; c=relaxed/simple;
	bh=U1r9YNzOJagn0Pi+SFWt6F4Hk5qqpDTiRjkhVURNr4c=;
	h=To:Subject:From:Message-Id:Date; b=ApZohhMa9he1Db0APkWGiyUvg3c/AxEHuAtGBTyPqv/QM29eWF7VBGWVa6xc9JsdsQMRc8TX/5RbkzkBqi/SnYLJdaEWhlTOZx1chS99Yfb2roMScjLBC6T/bXesff34AY4015cgUqIJIIluVK/hG/SqXzEdMQiNQso8mohmTyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehP4FRJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehP4FRJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747048793;
	bh=U1r9YNzOJagn0Pi+SFWt6F4Hk5qqpDTiRjkhVURNr4c=;
	h=To:Subject:From:Date:From;
	b=ehP4FRJTIz72MG7JrZS7wn4eo0DY4lQtbjqDG6o1WRDCCCxLrJnQ5i8IeLC0ydLLX
	 Wh3ZNGS9PDRkK5lFeZsA4m6a0VzMVsmJfhCgr3wK96QajVv3+k/FL9Aqpr69Q2Y7SY
	 UBE2kxd41MLZ0K2CCEhKVjyoe3A7Rc4oMyGXNhxb/289KEu7BmZ0ru+MLeVwM3kOz7
	 GJPH3Ar/GStK3Zg8avPQUqAdwNoE43P5j/gOXv/U3xcCZ5CMC8Cf359QD1JxzRLgon
	 cFHIm+/kK9Cnq44rIB7tWxFPqf8qu4FUOvCET6b7IlbjhITnKI/G/h3E6+rTlj23V6
	 91nl7cJPWalCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5EC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704879358.7024.1080724791780233677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8926215430123812da0eafa64c0b80120a24cc622f5043ddbe14eb2f0b9ec8c
Date: Mon, 12 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747048793
