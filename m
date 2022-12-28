Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1937ED0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 839F1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672213287;
	bh=iPbBQklBDM6qbZQ4x2oNkQoSmmEikxjcmeGeMbVkoVQ=;
	h=To:Subject:From:Date:From;
	b=c2pF+dodVi4Ho9h2joOWbu5bsUrpzaxD/Qt9PK/ZFxrbB6cmbtSRM9kaesi4xFHUw
	 y0yJg1qSQjBYJJ0FmVUbv5WCHPU57sgxC2LJawueJXbLvSdmxF9AoM4AwIWfWX5amG
	 8ulNUYaeyVflhnGuRG4bhaDPfMwDdmGP/ZQuCWNtBSuTChWeTFUP/hTL9OTay1GSyC
	 pXNT/SgUa92/ypcBv3gHNjuZN33nVi6Jf50RZX/T1PsulUxy2ZVwfy248TQcmjx6ry
	 MuR/xEx3kGglf0csAMWFDCRtxtA22VrPgLvQ0e9qP7qUKyzJm31lJmogHKoHhIDV2s
	 HY7GhZlxkOvoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646EAC46467
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221328740.18466.6045800175980922939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c099ccf88bbd073840fbee1e4d0d8a0a61faa537efb680a6926bd8545772f6ca
Date: Wed, 28 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672213287
