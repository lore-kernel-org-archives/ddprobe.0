Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40A87E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D11FC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670629887;
	bh=1qrGp/XnzdeHZqU+88en5tg9biGEQo0fG56mjc7etxg=;
	h=To:Subject:From:Date:From;
	b=ExiXcv+z8jcRfkG69hev1lrqbM69J6Eqp+iCKjVNuzbcm7y6GF1jfLKIStXgHX8fz
	 ++SC2rqiOetDuO2BbL57iR7gm7JWRnjyNvD2D6p3Kz/DRdkbrxLiMx8ezSjKmos4cq
	 Nu8od2wzGQt6zs6g8h0H8BVgntFtdapxxDjXURViik3fsmoBuqW1zFz1oDbm5Ty17O
	 U2Q+ukmFrzX4A9R6yo5Dyt5OomFqOaWNdFdWfCv0YjwM2QzUSp7kZZomFl/8wrtCmt
	 /4fDcaRmKRVODq9UO+mr7XpSxJ4ihVYhZPos14Ws/4vorEcjxQ/ARNZqM/hs1OeoPM
	 61/NSLwLZ1Diw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6260AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062988739.19794.17017063778307962761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e463d7a5f40801349339e47b0d5114c9122a3c7ad309f7ad838239d993513a45
Date: Fri, 09 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670629887
