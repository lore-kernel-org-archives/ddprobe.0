Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62F027713
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9066EC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670347254;
	bh=SrTt0le82acP9/GOO7RaI0h1U6ZnE/JHMp0n5khDR68=;
	h=To:Subject:From:Date:From;
	b=ZPrIPcKeDRe/IYknxTY9GCzqs2KrHKMqzEaKDa4HDZWP6muREajIPMxakuGH7lmRq
	 1jM1VH1CaD9QgFOlobBBqnXy5hCn2ygZmSF5WxmPmk6cS/zDCAatoxu1O0OBLe5YPG
	 IvVp4qrEstmIQCs9rwdRwtLbfgrSKLYpBVjFs6tDB0EbQClDseeTSI2AWsySl83552
	 un3YFO/feDc3uWGO4eycl5IsGYy61BNInVOUtgKZf9WVtb4vf383QoQaQgNLgfYiWT
	 Mt+rBlGXkMsh6psvwd9VmEZ4XsnxWcoszBTUM7ddLaJntZ4r6qP9fpBWbQvgro4jKh
	 SgZ3d1I4z6puw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7700EC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034725447.23641.849051964399904358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20110b10dff3090a0ab354feda56aa15ee339396117b7480204a9e5cdeacf1c7
Date: Tue, 06 Dec 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670347254
