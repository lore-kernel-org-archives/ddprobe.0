Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34103234
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 18:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648406758;
	h=To:Subject:From:Message-Id:Date;
	bh=HtYh8NIt76ieGUFki/v4XAbV5p7iYJW6L0CJJOQXSWI=;
	b=HGj0TqEIgk59lHGPcrJef/sTigTKAopWMeSsQXHSq8bjcxDaFWhdChjnFpsKfTB7
	PJLwRrN8w5lqnjYfM2BskXn9RuBBcmnNWdZyqbp6gFmEZWMbixzNupUIUrK4iVuQ8xD
	J9wOYRN5Wb+bQXgR5pSdHBp8nEmsA1SmqsBilhrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648406758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HtYh8NIt76ieGUFki/v4XAbV5p7iYJW6L0CJJOQXSWI=;
	b=CIfVMJ2rIpVZDp65Bo0WItgRBO77mTGAQztYhOGm4XT7+3J2ELmMw0asHBT8DGOh
	n4ApyXqGxO9aY8O6Ak4Yn44juMbTCQ61ADgZ27B1QOBEWiN4m6PWd555LPDtHl3lvLV
	3+iKiBnN7woZxyXdISay9KrEOBSPfI5/iRLzQ0pI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fccb303a0-165ada70-3c03-4d36-b876-5462195708b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8b9e10d2a43401e0036bad9ad53a19fa95fdc7805c6aa23a3456522a20b5063
Date: Sun, 27 Mar 2022 18:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648406758
