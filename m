Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FA5440C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7385CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665776453;
	bh=fcptU8M0qCM5oAL7xsGZqee3dgB8fpzVGMaUERUuhWA=;
	h=To:Subject:From:Date:From;
	b=dx2xmyHxY44jNh7jxtmAwXM0uvW1unL4BhNNEqzMqgV73H1F4D8Dc12cRuH16IVOy
	 JYNxbibJmnOBth6OCEANLznjq04ihVphCP7F6Xu7NEbaFQ1SwzHuwoU3HXZ2kUatjb
	 54g9HNmC3qG/DAYJ4yduqR0T/zicSPcE+Zlu1o44frGzA0oVeKMe1F/Cf1L9s7xsEn
	 2lpIxdaINeHZCoG7xJbvHLsofAqP+JBkOYju/Cx9L3eCyNhmc1Hv3e6krgmm0oWB4P
	 /uBMow4fTJAK2B12GVIfKM97LYjgDujqsCF1csT/F8l3h5k0hjYNJwN0tiAb0xF4FT
	 NTPxVwQ/SRWtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56654C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577645334.27125.16947310911021683631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f9ee1a72ea8eaa89c29e6fc9c97e7e8230ceb5adc7ea6f7cf8c663077c1229
Date: Fri, 14 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665776453
