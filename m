Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6501B1108
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 02:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E05C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 02:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685586845;
	bh=jVoqLHHw2VeJZPZwOVLJV5ZqcdyBHlrwj/G66Vuc3fI=;
	h=To:Subject:From:Date:From;
	b=TcSfy/P51u++ywr/+W8eWa6+P3mhjrF3J6Mt7q1cPdh/XOtdFx5kZel9vi8Qz5xK6
	 oW2DdPKp2u3YaS8REamwGRsbr5bm1TklBHhO/dW+zjkFpeRsWbOyFl2Py6m9ll3mZH
	 QSB7oZe1buFOEH4MqOP/0Pl2Y3tIvgbz+deiAd9D0y2leTBaeBZ+brS9dZF0PkUmpN
	 zJpCCCq6uwK59dj50IATRkYavGhOE1S6F87KnhlLPDJ+q5XOgn/d+ydUa+TwGNJ/2E
	 6dJIvUqKls9l6FmBQpAnMfalPTkgdREWUH/yhH4RLVVpABWRV6iMUtEwlLgAQvf4ip
	 6w/2pa9A6kQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FECC77B7A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 02:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168558684573.24049.12310769007713453145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb6327e5696e3c12a17d38381873d57a6726cfd62f3e2d9ea36c643cb140379
Date: Thu, 01 Jun 2023 02:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685586845
