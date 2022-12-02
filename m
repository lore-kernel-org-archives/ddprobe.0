Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8264C89
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99225C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669999254;
	bh=lpjniTLcmvYHQyNDvMN6ocXbbsjYzh8pRpa28suSoT4=;
	h=To:Subject:From:Date:From;
	b=WLBcZ4Fqy7PVZ+75WM5DVPy2c8mM/fVbPaet6/Q9Zol2JDR4dtuXT2SMNFyK5WrbS
	 Ff1Ry8n08c1Nxao17JKy3Y33LfOzbaEqJe+zlRYrPeLazPdIEeQWSyziqUm1BppWlG
	 avBadJDmndJ9UBKZeOTe/53RE40CSAei3FIZVgqX5cXveaDrBjHIyFDw6Q3kuYEgw2
	 7qWqZSUsDbL99Ozc7gsNnArRI6GXio53dp9hnoKFR3zp/Wz+WjgJ6iPfz7zgsPLoxy
	 2p9TYP18g90X//tUT3ZFrqJfhZ2TJKb92Hd18eU3sEwPaVzPzn1/eok4pI/vUJKYIz
	 GPqqTwnzoRVxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 750BDC4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999925446.11035.12428443992165628609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17e66623ffe9be6645021bdb4150d8bb94ce1c1149c04fdb2e3d32c0b7550a0
Date: Fri, 02 Dec 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669999254
