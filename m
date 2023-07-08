Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A85E7E2
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E04C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688785028;
	bh=dwn+zpQM/pRN0TkC0yZfdBC8IDNw1LjGxeS3dcgPKBg=;
	h=To:Subject:From:Date:From;
	b=T+AwQGCBODPOUZ203GELaaGziwJUwhJEn+D0Q6cUcQVEasTROpXFZUP2lRwiLB2Rw
	 TE9wu7Bye4J0Z4bC6DkxeZ9AxgFPwUMorAkYZdAAyEl/dxgAQgKET4SeyJVLn8hoQv
	 sSnlljzfQORopLvGQoSeDPGI96z8QSx5FxAjuvV1HeeeBumLcSyGd6y0HJr/OSj0nt
	 n7PZWpaCG9E1VEhhlp6Oz1zJ5lK97IBK6Gy8tSNAdpTsA92pc7ASJompggOo+Fo/4I
	 rBRp4Ic9RcPebUmSoRCQuWi1hd5GEaE0hqy8ouLbJNjpw80INFId1eTHsJSugyvLEN
	 W3r7qFM9cvDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D4EB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878502869.5726.10259195911752713164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369e61e047c8ff00c2b449c2a304dd13a8ced22d265a5bc401fbfcfe38fc36df
Date: Sat, 08 Jul 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688785028
