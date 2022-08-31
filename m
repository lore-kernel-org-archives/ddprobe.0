Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBAA387
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719EBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661923253;
	bh=/mlRvSrGowFYWVqrNomYZOwY8gNRqQejvyDTIOjub7Q=;
	h=To:Subject:From:Date:From;
	b=JnTFcmPKfRt+8rJFlUhjmJBAJjIz6woMzWpoB/qih+YFIEDPi1wTrrvAZoTU/KFW9
	 lDmY7DKKwDz825anTpu1XfP+vN8lqnTiASZXUgsosbgXeWy/6jr7SL1pBI+aXzJXQB
	 ncdUbSVcUYBmzO25coaVqWZFwOLSM9YFxejoVdlaomkmxi7z9EtvgUH+zIiC0MrRio
	 ijQoiQFYxzAXlCTX8ozwsyM4aMAT1aNQKtVCz1DbcoZ6kU4FuoEQdfdsqdP++JPLaB
	 hzXvyAlu2N9YBe0dQH04hGUoV3HEM84dJFU24+EmaejbvaRb4gqhTRq1wodLUyHxux
	 /Apg1bOTngpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51887ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192325332.31183.10564846778657874294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623fb824e86897dcaf112dddd7270fcf7f1979a5be6b9e5007c6a68524c53d91
Date: Wed, 31 Aug 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661923253
