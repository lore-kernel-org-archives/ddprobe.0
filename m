Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E373936C
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5E4C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668907254;
	bh=oD3PwaEk4lklVzKYZGlyBt+eelgTFcD7nRprtTfAn3g=;
	h=To:Subject:From:Date:From;
	b=hlQL6UUd++zfsH1Z5mx+ahIJb/WJKSYN9WWNWux0AfVjjUGIJzCWbazk3+cHkKtM+
	 cIs4f4tAy4bb9Iqtdt7VayUg7D8k8c0+zaF5RZeeGX7+c0DpPVEJVK8i3O266Nnwzc
	 1zFAgBmg1kQP6o53C5r/XSmt8r/0Z0ua+mcmsQgLZx0UuP31z0p80DUa90zMuG3NDW
	 sEmivoHSgpqBi/w28vueKdSFQbjuWZWAmYS4KnpESssSOqQ+Rv0MbJU0WiggBMtmUj
	 LApRBdvW6dwWYgEMNhlSbvLj5zlaoQNrWplaDh2lODBbqLxot0y6Gho6n+3Xeo/OEn
	 2W3hKQdSwoEkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59242C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890725433.22802.13831962893130707340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06d92831cc0e12190f055daea42687d38d675275bd8e81831eca84486e8abac
Date: Sun, 20 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668907254
