Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B092595
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 166D5C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687374189;
	bh=T26pjLAt4INiHBOPmLG9JzbzFr/gAMPx9qZYaW0n39E=;
	h=To:Subject:From:Date:From;
	b=N9L3R4klJIk/tmIjBlWhx2HAp3vnj3UP9c2xqU4qEOhScOfJZma3kC2Lp3E5UCfyq
	 BEc1Dl8s8ot7SAQnE0C9ao8CewxvGMWNTKlAl3rqitvq2FiFN3Lyv5niqnEsfDRJJS
	 erhsuniCtIzGQ72NIORWKTmFPA1csQpdvhZHikcGHLpJG2fbnHuIObpLzKvgNUVUHn
	 jv8lerH9vIuW57oM48opKxXd4ciN+SLCKZ73MlReFtTuO8AMgrACDNcv1Ji96Sn+2r
	 tcQLqBZg1lVFiJoDspSxzHh1dPwzQFENqko68bb1vXzOxp6Q0P5th4EeNxofdDCP6p
	 zXC1yIRdc1YWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1539EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737418889.23297.14640975097730462498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8fcac37c6468eae0acefac8786636f48cc4e5457669a9dea5c3aaf5a3d8284
Date: Wed, 21 Jun 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687374188
