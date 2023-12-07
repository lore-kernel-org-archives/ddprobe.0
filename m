Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F118A1FBA
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6SL8Ps1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A68C433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701920896;
	bh=xY7c0m6sFQrOWQss2WzWBNeeEM7KtEz+Dvkw0zCSTfE=;
	h=To:Subject:From:Date:From;
	b=c6SL8Ps16lciytc0LtplcfAQ7rGjt/SyLenp+GsUxehdBMJ6dBGjRoLW4guqM1pLq
	 /tQO4IpHGQfMKa08CJrkjKrzoQld+Z70BtKcg/2cMNPXuOPZ4QNVpsy22tCBMhU4Rz
	 qrXh9OHCKtc7tzwJaRJEKCEjNLup4mdDRONj95d6v3vaAW0aGBz7ktZyzJp8ebAQEd
	 DR/DKFAu6sFejmITH5ML6pAMEcaRqpDOBTNNPMGm7WJCQgPxmjARkTpN15CPn5rb0G
	 ReVnhXwea8SfvxHb5NruzsnpRGFXgCbMhixxc0IXIDDXlqVAXhtO+RDEubiZBt7RtR
	 fDUNe/2qaYy7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D861C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170192089637.17549.11696972644735960544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726bf72414f9ac236f060e317dbf18efaeb89a22b35021df1984279bc584de44
Date: Thu, 07 Dec 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701920896
