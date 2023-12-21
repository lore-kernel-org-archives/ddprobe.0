Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E4E5822D
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMJQ69Y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72903C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178496;
	bh=//rQl3a0DPuJrZAwvsP+quWh3LIR67AMZoTyMweGlsc=;
	h=To:Subject:From:Date:From;
	b=LMJQ69Y7A8Qu47RiHahI26mYAUmVjjCLm2VCk5/koIhSC06LutnVnGjjAi4ywuouJ
	 3MJXMWFnH1MciIM9mjIiFhOQ/TP+6v9WM4QiYj7yVnu1pLNapfUoISYlV5tXzpQHRj
	 KNAzn2P109ON2Ah0gM8YFa59KMC4rJTPm7xLDNMXTsDzoJFufrCnQTEyCvGKa/BVd/
	 PBkL5LCSJ36tIW79DEU8xZnYBbMdIBkIm6dBlDbvmDEMG2aQIX4NPEv4G3KRKc1Xqf
	 RO7MH22VHOVT6+lKYLNYG9AoU1yi3apEUGumE7Dh3RiGC6SrmbS8rdZBjfQWMrJh/5
	 gvp2BQz9vcDWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD67C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170317849636.26170.4030722852563687677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765c90de5c203f469db38c5bdfe3513639d8b56ed4a07002af2582d5e318dc55
Date: Thu, 21 Dec 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703178496
