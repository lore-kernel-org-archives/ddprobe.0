Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8CD3E489
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 22:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C599BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 22:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696373768;
	bh=UyyFH72G8NjF0MqP4Jgu9LiuyZ/WcmAuTKNlb3JeUkM=;
	h=To:Subject:From:Date:From;
	b=PvBYradrGMqfElHGNLDQLZXsDj9+IjQ58VxshTyOb9aUizy0Yvjj6It5cZpaQM+SB
	 5HRJQmp0/ayY3vxA8g1q0c+v9A7qtZKLGrOY5FX5m+gVMJxGWXBFc546dbC0kmoaQI
	 QkGW9UY+rIiMuCDAUXRpiAbsHnx2mHNhuOM+rHKt+gfJm1EdRvYZa5fVAVMhb6vj1L
	 jCqZadDc2Y2hYoVeXMy5gTI0gyEhQTvsQ6PDV3bIEZQgcV2CMQGL9qO4GtVvfe2fL4
	 CT8OayXlg12HOIw4IF+pkCCNzGIuI+saXIhdG1/XsLslEiWHqcPk4k8qo0PuvuhAF2
	 THT+nRucj3I8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A691AE8FDBE
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 22:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169637376867.11877.13018148566331781587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038e1cb9dcba97f4640ba62ebe223a91f18f92f7afbcd043bb5c47a6821ba4d3
Date: Tue, 03 Oct 2023 22:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696373768
