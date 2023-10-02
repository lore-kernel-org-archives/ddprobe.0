Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720BF369
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 00:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4812C433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 00:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696207568;
	bh=MTvMl7n6HKAoehCD7ogMhDLnDXQNKiWxSJRKWuWqKYQ=;
	h=To:Subject:From:Date:From;
	b=A1VRih653IFHwMClNeNfBaFTHe1uWLBUePxETF82Of0pWVu17IOBIKdVDRanmTiDb
	 9OX0S62zWBxQ5dButK7ZWLgnlSVGCamrIVLroFBWkl7suYmTjdvPry/PZaWsZhdEev
	 amzc5eUX7s2HrxnvAUsdIsVngFzllJEMWia5LDjYPQ5MVSH1c8OVJDDC2xgSXl8mtm
	 1NsIgum/eHcQLJUoOzpwuhOH89EPgACiJqrlEH/BfJj+IJPDEOf3FEfA5l1c+FVNOo
	 DisIercs/a+UtijgnktrjkfcEo+4/hgvJgRfY+OgWIdOVltFbmNHnTK3aT9WuSCRaB
	 syrZ0h8UTQlTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4751E784A6
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 00:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169620756866.16371.6281150999845033080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf58b28e9ffe6b26ecc1bedd887280ed29474d2ec858363e64ab893901b5c18
Date: Mon, 02 Oct 2023 00:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696207568
