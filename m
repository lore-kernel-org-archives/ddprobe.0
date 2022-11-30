Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DABBA51
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693FBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669846854;
	bh=mUW9Ujw/Edtfduh0A5y9D2RjFerRVJXwE1mJ4Ro7Jrw=;
	h=To:Subject:From:Date:From;
	b=erRkTv1/cc8rd7ch5DxQzxV3WfnqNjqxt87lcMeuIVahdqFHlgOUu/DrXYo3Ot9uj
	 DKyCTdCJF0SYJSm1gUHLYbynK3Jcb+Zw8NMwDAISJaUoSstPwllO8qrStz/rqUC8Ck
	 DB4q2MGp8eW41hyVVD7HercuBeF6cS6RPWu2KJOqNx4P8I/B+ElZFRoI7nMAMuEzdY
	 VDyUgcnPXANpOdYaogMSV9f5/yJuQVvi9a51xmgS8AY3YUmoXqjhsuV3h3W6coKAG0
	 ON8+hQjTSL2EwnLHb+KfWtgnalposAOMv021aVQU2hF7v8KQYlf6SAFkrsLxs83Yyr
	 YfrqVrvqAlSyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51508C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984685432.2134.17792757576297328550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6485846caa84f58c02d612c2887dce336071c875c02106ba4af50691ef2a81f1
Date: Wed, 30 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669846854
