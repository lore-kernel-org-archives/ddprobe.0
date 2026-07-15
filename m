Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4249C3EDAC6
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784106514; cv=none; b=Qtbitz/YDMOJ8dcF7Mxj98U08Yw3ypWCX0assxaMX4Oy+4Yvem8vJG1j5WqBvoKJQ36wmjefrl1hsz1OrIWJvmTCCSqG+oiRqqnd72w/SGd84HDeiJ1D4r1F1TwFTKp/9JvOCgPJ4Ex7UOYwFuNDn53rUzs7H0FHPIJ2fFeD6kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784106514; c=relaxed/simple;
	bh=L4Gpo8mCMFdyKbGYVr/5u5ZSU6HmTfx1SxktOrkpB8c=;
	h=To:Subject:From:Message-Id:Date; b=UlJ78Xz2vv3o9yNW85M93/tkHj0cpkMTG+tJLwMnAwIjw25spe2SY4It+Yjv5ehcvmle2WaaiA7v1/Vgd9y2GuQgDOEe+YpiZzEh0wLd1TAet6+l7efWTN2aksgYjM8sJNtmziKWkYFpmtZLwB8uz5gSRVJlN0q1jYqE1U4pFEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEw5rZf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEw5rZf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDF3C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784106513;
	bh=L4Gpo8mCMFdyKbGYVr/5u5ZSU6HmTfx1SxktOrkpB8c=;
	h=To:Subject:From:Date:From;
	b=kEw5rZf68gvWHwkDNFzqt4tU8XDnPBy+wdHMRjoJoGEzBrIgSED4+cBC1Xl96L4C5
	 c2A9XJdPEUaZhqEpV0rtEzOKmH0dMXOwZZhlenBqfICWr0EUT3x8O0aJPSOqoJlTfc
	 89yb1tkcOD/EA0KC09r/pR36cSQD5NCyb5QrjPFh98+HmkKSJOUVCctpkK7dbzAouA
	 pzQpPtZRzVlQ3oWFQm0SqIPMpxTG0tqt7qIAi70ZDOTd1/QtywsAAUEfV2WUfhk3w2
	 PgIsbDaefmJ/11aFbrtGC98uIIkny7hfm3loBjnAguN4hUbVNFNEX+pe+iBysn/YUm
	 9D78cDAezpAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D6BC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410651368.8953.10333351194171105337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979de87d72aee8a9996fa23ab40b94eb8ce62e04a423c07ba8d06de8f230b7df
Date: Wed, 15 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784106513
