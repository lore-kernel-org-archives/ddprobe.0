Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67BC8468
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B748C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673545887;
	bh=xmzsWMaAtFf1g5zD3tzr1mobavcauOvYwKOQrf+xL/k=;
	h=To:Subject:From:Date:From;
	b=fxrYijoKDuhq+KDV7UdxUQf1hqTrI0Cf0eYkbL2XH2xzy8uItVPvyfbn4+Anhep5q
	 jSibpomqXCfs9SVYC9W73bo7hKxgSgZslmWdZ83LNXS8sHuJOSwq6h7F17+Qyuru8K
	 r6T/RzFJqrvpRuz5mkaZALTuLTzBzwqbHvkOF9gMMVeGCl9Q0TLxLcod9WvAbUrnc6
	 ANFbBx3lYwokOgM7Viu+igIQwfMM2fVIT1z6swbb+F0aoqP2GMjWFHLyL1k237Mk/p
	 ocP+iwhWgOz+8GjNT5aJn3npZ3ejgvuSSIx4j/yEVitFBp59csqo9tCXQkMM9t98IF
	 PJ7V3XgobH3og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D3EC61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354588738.32580.10405141401886524060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533739eda9ce5bc4bc979a2bd60c6e84891b9600609610e6ee48b0a4af13abdc
Date: Thu, 12 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673545887
