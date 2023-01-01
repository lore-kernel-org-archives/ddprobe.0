Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD10C23AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A949C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672560087;
	bh=OK6s2DqvLwWZbG3Ub4gf1jBC86eMmpW8O2NdlpyhHLs=;
	h=To:Subject:From:Date:From;
	b=KMfYNcQ+GbP5WeeDd2eF3ePDruTDUxXkeVLAHrRb8W3E4R8CjDq/SzeSV5mirDopC
	 u7krDf81hcPZ5tJl6MHLgOZg4c6v8UhblwbPdcpIn37JMgFMpv9h5/K6aZYzRU4HFi
	 J2IiYJBbaOTYIFBSvAgvm1qjA0lZox1yA96c7m5JiIhSvhfkNwHWKvopNzeTuy1ZzK
	 3BMzni+lFEO7PfnIs09IkNWu9Fe4iBuvDsmiTZTnxcvNNnd5G4aN/TxTZi3eFIjDF0
	 b3x9m88J+URewIpm9XO/X6/RQGAwYq3TC3PuWo2eAgOEzNl1pBmTMlSHrtJsO3+COX
	 MES4wWjLm0zyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D6FC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256008737.27225.6647112080982043940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5c5e1be58974540902323073c77f31cc3366356c43e99198b4bff481f61164
Date: Sun, 01 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672560087
