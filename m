Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B224318E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 698E1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666326653;
	bh=RwwSGygVDMp+AbTB+teDlttgHYhtduIEjksZ6udjh0E=;
	h=To:Subject:From:Date:From;
	b=Bu1XFirSj2hbtshmNkUfYxBp82I5OSNHOa7/1xLJNjR9/G5Ni/VRiIcyDoku3AAGG
	 1V/VYaq7mOV0SAl52CP8p+O3ynnc6ksOObBrCL7u1HP3/OvJMBRp80NSFp+vUfx8o6
	 1GCrErtf/qlfuPL9VrZlyts81rtQq7ijLK2qqCnQqhwaDMk7UkLNFT278WTIbSIzsa
	 JInTtTlUTyavjvAURh0iTqkR6LSMcbiCbja4wSB86vJw9I3HHTyTUVQdkfW44ZNlIY
	 5u1fGFQG3XvEsobj9GnOoSFumtCESx6VX1loGWW/+tSdPkvnLMWUqz74QLdrvLrTwo
	 UhaWhBN4/VJzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E29FC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632665331.5091.13167316636410827774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db64b560349c4b77701a1b34245066b04999119f702a440c1b93ebe604ea38eb
Date: Fri, 21 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666326653
