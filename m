Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF56A7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66972C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662964853;
	bh=2NVArDJovk0VjjRW6qVruYQB5cN8hm4YzfJeh4WfrtE=;
	h=To:Subject:From:Date:From;
	b=klL7DXvkb7rxS4MaQCljFXoWrHKl63WsqRFaP4HT+i9QJgfKOfSCuvyaGQel9+jmg
	 89OOv3yg0YfxrdyUTI7/7MGPZzYoMJjBgfJlesaXsOSzI79VPRoJVlwt4Pna/T0G+6
	 l7KkaaG26GLMHXKqadjmweSe+nbIz2YIWw/O16fKrc+hNSwGHnRv28+p0y3ZSyuWKA
	 zw91FISdBeXoLXz8FIYvnzN8ppeNNIwM7Bk/R4uc0DGeuayO1iiEh9LDGPan5YiwOu
	 s3LYhG0xGnnPUD9zkni6tB+93eI1EYXv3L7Q5dIYnpbusa++1YxzUukvul8NuFJ0Oh
	 nH5hO+XPdxW8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD5EECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296485331.26686.12062384078109828330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ce30f7ce1692437a5f10c2a19b2d681fe499a83c953232d82e9fb782e9caf9
Date: Mon, 12 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662964853
