Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3CA23BC
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 09:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9CBC433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 09:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680255665;
	bh=aDNfsFOXY0osMUDextioeq6/6mjDbPGDzpT77SLeAHA=;
	h=To:Subject:From:Date:From;
	b=H0MBIbFmM/W6viZq3aOhAaGNNhgdyjnZjW4+ElQ1BRWabwyAcORaVhygp5sDnzxeR
	 FqUC706h8jskFMoEWu1lBnGkBqLIikKxG7+eQTBjPT74khp5EBh0b98PenE+209N9n
	 tPn6ljwy+7fftmFZmpiVdCGNHrl7z1KU7t5OgePRQGPLHruA8FDGbC+qLLBmG5Cahg
	 F0qqRiTMV7K4V/4z70i7ykkaopp0cZZjuouLJi/GaM7OKS/Uw53WvMZN6P5ZhuaOQH
	 Gvcw5AbxhGdw/yFj0xjr496OCTaAL8GrAd2B2Lr6VXPgErDWnPm8lXVX18E86RFfFD
	 XhWkU7gyzpU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8CAC6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 09:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168025566576.7167.3730086548872902366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befcd57ec3b52fda887b06ef3d292687a7bde79991688ad29443fb033559c3ea
Date: Fri, 31 Mar 2023 09:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680255665
