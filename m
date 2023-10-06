Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4CF629
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHaM8gc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0967C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696564028;
	bh=NA2B9JKO4FKxC9J1VAAC/hzqu/WjBa+0HH097GZT0ZI=;
	h=To:Subject:From:Date:From;
	b=IHaM8gc1a3W5L69XyRqyLku/0RXxviT31krW2E7HF5veOBmcUe+613nlMwUSOsRFN
	 OU3nXRgoKDiIFdZzY/Fv9dUZI8sXU3rteyEDnU7rd07dlu6XYN7PlQDgXxgoA5IQot
	 uv4M/FmI/LtaUseSW78aDOfzOSmtM2zEWato721vqrxvSklevlRSl7Trs2x6j28lTd
	 7/ot76A19AwI7aU4wN9HWStCnTGsZvnzZjNPDBUCxFDvAPDXtp8DHkXkK232vDQiwh
	 wFlX5hZ5+yBcJJK3usae1KfxVeC4DBONHeDuLEocLTThcH1sp42KM68OiocGZE0ooF
	 +mNfU/dgePDUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD0AE92FDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169656402866.16671.12290121000841155818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c8ad13dce6a521d5bb8fb224378f7b9f908c0d74292f6a46c0d20b2c8e5930
Date: Fri, 06 Oct 2023 03:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696564028
