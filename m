Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4647D1C775
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 22:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFE6C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687384988;
	bh=KN9WtZJtWICFAqP3JBaTWI9BIGbhNeOZ91AxOjS5wH8=;
	h=To:Subject:From:Date:From;
	b=tBaWkLnJate+XxSXkEN5Hrzdu4AJe8hQYk4Fjr/8LRrFSlNF2o5O8QfHty3owMMu2
	 VqZiElsIDZmW+zgHRYR/O6WLY4Yy89/vcWL4vlJigzM/JjU+k8wlvLTurK54QV/PxD
	 lWMYZktIzF9yPuadLISk9b3358dxmDiP/EI53Q0p7Y/0yZAammMvPiROhtw43MoUAA
	 HRcIonB8RonOGzNZzJde+BSREeDNmnmzGS1zvp5PP8kSPSyJiFT/n3VjxW4gpbIhud
	 J/Kq/U5Xnw8Qcn2pnKC44Hgg2FDKtrEelwHeiusArvOpAMSNbPPqIaVlNNmr02nVEj
	 eTQ6PRF4KPHIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5943EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 22:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168738498867.24159.14386109324081684687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b565824e9853aea49a857bc2a0c6d5e482ccc50b11783571ea95bbcd4191c30
Date: Wed, 21 Jun 2023 22:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687384988
