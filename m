Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C739A3C00
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C87C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661443852;
	bh=WanwB/Ga1CnZLhfS59GcuNa3/GeTTrSS4S+siu98LCY=;
	h=To:Subject:From:Date:From;
	b=VgRslmTn1pSsSr3xLj8LRI7fenluvQAPMZ+nTAFnegz7jcIBoE+DytOG9I/XJ10Th
	 IgTvqFK7creSYvrAsPHpl1hjmhhiwh3eqscopSwkyge7I5qhwIDOJuoTmsb4MqE044
	 kX5Qm6zJvhj7+eGSsmxXqzzaf/J4INGIhpr/e56vkD7e6MAH0Ve7VJiy3mMVJ29WMC
	 aoL11ihHqD+yYq5CKmKAL+zxM48rqGaxgGCg8Do3RVUoqLMjGySTz/zQpZTsLX6VWE
	 cuZwbk5vQ00IdeCkmTwvXTC1ro9b7eD4gz+0b0uTCRcLgeHPnY44Uw+tANUgyWRafA
	 JNZIDAM4zhdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E751ECAA25
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144385237.17796.18111802876351408279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ade7a34371fdd71b48dc44eed894bf855d1c20891a613069a51155aecf8386
Date: Thu, 25 Aug 2022 16:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661443852
