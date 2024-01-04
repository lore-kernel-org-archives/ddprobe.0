Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDE72C68C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL5uMi8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA78C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704400096;
	bh=G5K/a0GMEmsBSvg0zBZeA0KrbucSkoktC8qVL9hAHI8=;
	h=To:Subject:From:Date:From;
	b=CL5uMi8j3WadYdR7gzkZzKdhZYgah6tOKyUqAXDUA6JBg3hS66No97vLyH+IZgIen
	 A/Qd18qFUsfWskyzjau33YkRRPj/Ut16MGWFqJDtz1Rtous9u3MKkRZDwKd13FFnH4
	 bkGqERdfEWI9cRBx2iZ8qO93iq6Z89NTia2RoIR/irOd55Dl64vPbtGOlGQ1luniJl
	 LeGGaH+EYWCc7ZAjA1U1nXhMQpuji65kMkTwQful/kgYpDhtVJIXOHrcDz7Ovd67xp
	 0beYy9n2JkSeFmAyDqWiuImf2NRIqkJKvW8jPn1SdCrXTsPkkRauyO2Cb6lzo5jlxr
	 XNmr5S/LQWhSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D10FC47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170440009643.12083.16529291670205006595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d996a4d4a29cf5e9fc1dcfbcf623f007cef5b957ad520a49549706569ebf3c21
Date: Thu, 04 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704400096
