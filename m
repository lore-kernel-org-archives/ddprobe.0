Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3A22E92C3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762758594; cv=none; b=IATvYZDZ8fDmaV91SmPPtso7YenciJDYygtUbCN7z9pGjwXOOKoX1Owf+MMs1ZBwCKUjieWX48F487DKWL2cR8+Qr3XLcch6WzBsJLCpBinMNqyHWW4vNm2d1I0yGr42DXk0vrJ5uayAkDgh1TRQTkRXJAZEFRtHFXppnQM0hyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762758594; c=relaxed/simple;
	bh=1T9mB3yFhPmOj001uFX+BbFqRnwzuERSZqCG/H8MT7Y=;
	h=To:Subject:From:Message-Id:Date; b=hO7uwdFtjkj5PRvxO/RC82VxULoB2F6cIyryuwAy7dQD5vgcU3XNCW1yovwjHbOkwKVy5OCZauqyVku3f8wwGiJEShRqlsfvqBLkeJbA0XVoczqoyDgD/8Tobweq6KVfff0umU417jG0xukZmQkk0LZMo3gsllvFsNAOm6tPWVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Je+jinoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Je+jinoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A2FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762758593;
	bh=1T9mB3yFhPmOj001uFX+BbFqRnwzuERSZqCG/H8MT7Y=;
	h=To:Subject:From:Date:From;
	b=Je+jinoqgA3wDk/+cAD47oKfD1LkUyoKdFp41dLxdjKTfDpaZQwxDUbdmepwtnr1G
	 67Za33Pk2t9L0i8Dd5VfpWgE1sxidBXbNYbeA8Rp8Q7vxg2S5pIjbHd1D6cE59GwOl
	 IxlcO+B+DFikTiwTuJD/c+v6+R1lrGBnHeoLJLFhlRiquoEjtVwX/igVjnfqxr8zdx
	 Zy9JxZ7GDElaZao9y3R6uHP8WB8QbdXt0m8JXgIFa81v8xnbl6X6XjI28RNiIOjiuI
	 3aMMg74LbWu66UNI5D/GR3t3tU2d6/mXCJJYaDdKHEWzdRt3lOynP2tDdU0JvM5ync
	 OAY5+kW2m1p5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A24CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275859359.626.11707210812401497361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c261437b11b30b2431252322449a907f811ba0457dcfa7a97ab7aec4656f18
Date: Mon, 10 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762758593
