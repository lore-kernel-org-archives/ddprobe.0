Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718241396
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD457C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687843988;
	bh=VWv0z6Xu8qBnTS+bBEVpqgUpUo9A2C9ohUn75B3lcWY=;
	h=To:Subject:From:Date:From;
	b=B2HQM3B7FnYkPfuStUyQoxY5tVLhCZUBApDX7iNsndE9FytID/SgZ8LTITFtStNf0
	 Qfz8+zohOo7PE9M9yIQOGhjzvX0T/vTPBF0bSTUNiVN8EFoBO7bLllWBzAEU0j9Ow1
	 Z2HZaN3kEpidjBdRPFXbDccvbE59luPF9zps9V4IRW3CcdADhh999o8v6MklSSlt7P
	 fl5kIE3pyRA+SXpmp3lD67+Fg92McH7GcDtDwuZsUq0cWJQY2fpe8puFWj9T26mBJW
	 tZl4iAnQWUVjuL9HGW8ci6r4/VdJ2VB9nyBdTmruz33e3ylkpBfp+WPBixSfnYqiFg
	 P7+FtKr+ULNEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEED9EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784398877.27349.13941043719846443260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af63df15c1c8ce6c603f5a9f12ffe4b7907f4343d717b7f7727ae81eb7663a16
Date: Tue, 27 Jun 2023 05:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687843988
