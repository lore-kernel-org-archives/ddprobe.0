Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EBABA41
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F6B0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673648487;
	bh=aXZsHHJPreRWDyTu0tZ6llfz7KwmUVLVIFZF5wmF2+A=;
	h=To:Subject:From:Date:From;
	b=pmg7i6qkronfJs27vQMegZnJ94/KTyg2L1ljTJyyooSguureFxmIzJ1pOQt3sbknh
	 KoqGnNRQVFIwcullMO4akuFywxZypExzgx1Y66aWuWH1YKTv5IwQv9aRYhDqlEsB9T
	 W6jRU+abnLzhl7tG6pvlKxjzAF/6m0X/+653y3UmaeEn4DH2yMy/6B4meuH87y6P6T
	 xpB4w8Ezt/Ob05QG/Bmbw769XFPg1EuKgD+NrXcr5Lv5Zxejz7SF6VSKvjbvxKjuuE
	 nbOtOXbDC0uYnJm2ZfKudnw13mleOJIGdaIJByn0YjKCBRYD8iU32hOjDH1+Tj/Iq4
	 96doZveVgKgwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9D0C3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364848744.16541.13960022733906405846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2424660ed99938705fe31dd3ec50b76b80737fe0c0e5200613b380d5740ed00c
Date: Fri, 13 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673648487
