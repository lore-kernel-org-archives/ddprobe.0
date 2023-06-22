Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B34B1C02
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0960C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687407788;
	bh=YGGjNqe/8M/r7X9TgQB5JKuC9G2WbwJ+lykKM4VraZ4=;
	h=To:Subject:From:Date:From;
	b=GacvOYLHiYzWG5KrLjqsE9UZcPRvsWjYfTdkRwkSkU2sdU9/9/VtwdxNAJegL9ozr
	 FMOVNzMHysZP1jci1oWpZ2qpP6DMsitU+MZQwcXF3EYLdi+7IMFQl+MY7SPHNej0KG
	 SikxA7UEyZd/ED2JwjyrKUo2zUi+n0FxC/3Ok8kUFo8VbYINQMRHBgfHYE2T03VbkJ
	 e1uQGQFAS22dLrR7SjIMeRTEgpD7uEq5FSCVigg4gpJnn7crRzot8X2VU7kz8n4s2P
	 pDqJ8rc89MvEnc8CoDT9Jd4hUvlin1W1L8Aq4ncu+zPpdZl9TI3M4AjHtPPbCBMjBh
	 zkfyp2RC8n3fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF437EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168740778870.17303.8518044723350281982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdec0b382be36926d0b854c9d965f578440c18679a855c208398cb44a3dbe812
Date: Thu, 22 Jun 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687407788
