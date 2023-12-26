Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7054C60B
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZWXJ+R9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9083DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703576296;
	bh=OMpArYJpAUoACg/nWziKxKLjTvXUfUCq4SaKGeRyn28=;
	h=To:Subject:From:Date:From;
	b=DZWXJ+R9GsN/5xmrndAWmNOLstg+AYQBp7hW2bvZJax1QgnXPeU6d0R9GtcaX026l
	 jBt302SgT3HibIP82KT1CCVwgVS0ebf9UUDhHPI0esihL0hp6MrcorGzQpxQYwVQvS
	 ocLFheC46TBuuarjS5WYqvXelym8OhgsGCNN/3iGredgpb0005S+AiNCvJOaoNhvIh
	 HBSplsMhGJKM9kl8tFjixHv9hdt7vEkPtote5V7qIlTZdpWag1mujcGSYD5nWhFjnE
	 DMX/fbRodRnLNW61sVebRvCPIW2YeIglnv9K2feQxZJJolAl9y6MtgxRPKEvUxbZwQ
	 vg8V9atZxZl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7011FC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170357629644.29241.1850376426816555949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56acfbd4b8a1422dd86aeffa4ffbd5748ff25b26b5a25daf80099c285db05566
Date: Tue, 26 Dec 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703576296
