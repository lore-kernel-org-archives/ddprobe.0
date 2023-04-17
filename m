Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD54848E
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08542C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681751946;
	bh=sgPwuQe3JIyAYxTytbISBJWfzJ89dx8g7/+pgoGxJXo=;
	h=To:Subject:From:Date:From;
	b=WEVBXlsVyET+ual+XeUCvcxPf6h9fjo/qydGmm3Gb0y6Ht1vSWQLl2LgUjdqaCQOk
	 5h62nyxBFJ1rDDnJyz52ajqz7nBLrP+X1rmzWjQ82uQ3HcKyQOyoZfB3CFdgejl8xH
	 MMpNKZopY0QjvJNmpcsOGmAqZOrVwzYWks0v2g6EolcCcTFqQZIRnIlCLM4lxIGi1h
	 Iko+dx8aW/VGqUL7OnXQuAuBtD0n5uj2iPfZOsha28GE96qW1AFRpPWQ0oeJJle7ve
	 BtYyPO5Oa1B4N3hjoLsjkBKmAsSBhpMWTVfKFbVUI3xWQlZWawt8kkA9+fRdxmAF9Z
	 1rClfsc9vfx+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8EC2C77B7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175194587.11461.119201054695358141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1aecf1a682c568a5efc3d21fd04cc3e5fe1ac0c36d63509c4a73895e8d02cdc
Date: Mon, 17 Apr 2023 17:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681751945
