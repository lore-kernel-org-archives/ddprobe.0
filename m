Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140615A2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D906AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674203525;
	bh=M3ViItrqxk52uN5F3hLq2Gglgh54KovCqDe2/JTB5wc=;
	h=To:Subject:From:Date:From;
	b=DNPjvA52gZzU6z+uLRKv3sAzOxyOuIehYTCyVvqT/6WJro9MNxSue48HRaX24MNv4
	 nXni9YqgB9zCfK6L589MEDr/HuHthsDKyFs9h5H1vmuS/KpbdaLdmz9kW4m2T6nlO9
	 E47e3dYY1BpiGB3lAqY+hFT7zhsyxjfgmavKY0+eTcriz2YiBxY4n3R3NyzvWhpZmS
	 CEQNE0BnAmvxiatPC7jNzMEcDPzjuL9dx3VMvDNEngF0W31r4kqtPfx99fttpVkyMh
	 vqDpKKmJIPoIkb88ouASGNc09aL2Q5GjXC2wyMnuCfnjbXSCBztaUBuuOHQ0I0u3cZ
	 FEiy5DCl5Gfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA124C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420352575.2255.3845420263343202299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c08bda540c840f88c6b844b4b392cdb091d2ffe7037dadebaee79ef7d08df13
Date: Fri, 20 Jan 2023 08:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674203525
