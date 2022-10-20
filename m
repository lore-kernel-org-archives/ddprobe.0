Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C957B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EC7C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666234253;
	bh=OZkKNlOTE/S7ZIqkogOr21KWlf6B8nBmACm9OXIuEEY=;
	h=To:Subject:From:Date:From;
	b=Kh2xfFEdV/M2RwRoqV7RSulgPSaBJH5AwHfod140UeLFA48lmgxY3wJp26xNGJHSq
	 z87zvPUL9P7uTF9i+QF5JvxZ5Iibm3SCOwozy9fu4trfbllrk5VLxv1LKIp8AclhO4
	 pPQEcRw84NlYNwqgwHa888VVlhpPQGEaLzuJ36zNrr5/n/O5GtVWkcPhbPXWeP9tgd
	 GKUROSqh4Np2ifsLi45yezLc+H7tb8q3PCbF2vAFxoCxRDk7Ut1bq3NzvCDLP4461c
	 xW8hRherT4QIAlKvjfmbAxA/a2FSp96dToN6NdChI8NqI/LZub81+LOXm/6gxYNd4N
	 TRxbFVCPB+7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56501C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623425333.24778.11255674489630362410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e70cd541f3806b3c6dfda5cf87ee3b9cf9ca662481a3d309718d9ca318fe5d2
Date: Thu, 20 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666234253
