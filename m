Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862CCC2DA
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 19:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0B8C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 19:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693854248;
	bh=MIM0W5RGOxxikk5hWHAeRgIfeVKnoOEVL19rNDCF7yI=;
	h=To:Subject:From:Date:From;
	b=nGTFjoPe2sXqU6jks5uptRfA4omPzpovKqhibPuzQ7xy66NCSzVqJGjE6lP8icxwD
	 S31c4cKMbFSI81ye/prhpceIaFMRMgeHFCAErP9YtsDOg/wdWhmKobifkBnMWXsL1Q
	 ZkHgiUUEWQUriBPKZcEeuYdPvc+CAjTpQQfchQOKBQOnij3RGoJDzUc8Yg/ryT0mxm
	 kw0Ip4fx3co0PMyD5qazE+366w+HKr7nv59k34Iu1p40cjmSIIponRoEUe87gXpQWF
	 cYoksT3gHw6H9bskFz/SypOEXzE2vtWFWPb1YHGmvpOsXmXuj42eDU0cyNn77c7Szt
	 cdA7140bJCjJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4979C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 19:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169385424869.4951.5407151652933339220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166b3b1baa93b2aec6247d1208d6899e0402bb2fe96822d9a47fe500526b94de
Date: Mon, 04 Sep 2023 19:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693854248
