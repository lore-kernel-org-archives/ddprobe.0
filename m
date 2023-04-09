Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438E1184F
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0168C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681028465;
	bh=ekON8BPIZrvGZ/6Q+F6frrtOuou83s+hlKn5IaEiPhQ=;
	h=To:Subject:From:Date:From;
	b=oqTdfoSi1g+NbtUO4wbzkNIcer+5/GWOcaIvQ9ZCBQJcmnziRdaAsOd0iqqyBULFR
	 PvC2aT9Pg0klbh0dUfOeK4itZYCV1kSpkm+7+hvqVmTDrUddl8aBFCDVD2Vj86Ji+c
	 7lXZIV5ToSXdC2aIcZ6MHGudjr66WyRROjvW9HF4hIWCg0P+wDhfninKS7Gc4VEeHe
	 FfSZ+RyNXjmi7JMJ1Iy30EVvpg2+gtT3JaDRaOqR9RNAd5fAVUdrtgOO7DYMMKxbU+
	 GAXS5sYvlemesa2J1npcZxrTOyUMqdkcFTAM7HmGy8RI+wmOR8BZjgEVKGkCQHtgbS
	 h5oEz8Qgw7Htg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68E4C761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168102846577.2675.10682131133950401315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5034b9deab2a4b0b7ec1aba922f771095e1752f34f3463eb9cfd98b5bf40ca20
Date: Sun, 09 Apr 2023 08:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681028465
