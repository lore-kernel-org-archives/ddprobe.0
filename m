Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5828E125B0
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 17:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5C0C433CC
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 17:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694797508;
	bh=7FQffuyXOBRi4r+OF3hWyJ8EHG34Y3ud8kWUxMPD5Ro=;
	h=To:Subject:From:Date:From;
	b=JrNh/otKGEyHHz3Nj0VyGNRnNEU3hZPd82Tp3Gz7sps3uNGeu1+RNU5c9IrySqQuE
	 a4qr4Z2VKFLtnD/8+RuQgMBU6C7fUwo7K+FkSQMQAAwXU9POlq/urG9DI66qxPn2PW
	 Pd33IBc+cCKwzhMcvozhitFUjsYyotdK9QbjNOPV5dwRFF0N2NFvUundD0nzu1Rwci
	 mAye0bV4Bn/96W4maqAd7TilSOlGe5LbQcFboECqiGUEgN30yqr4PzvwAv1KvxwLiu
	 sGxVXyaCzHjbqb+13Gcpk4ESvrkheErtUW2Upg8P7+FWpqN1rFYnm03eOb+sDDxXNG
	 J04Bfrk5pLDXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D68EED61B
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 17:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169479750872.13355.16641902033403937943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a91ea6e3c5e709b3f3f88d02f5d0bd349c32e2fd8c6541f92d3d524c3aa099
Date: Fri, 15 Sep 2023 17:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694797508
