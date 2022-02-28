Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1A553A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646047284;
	h=To:Subject:From:Message-Id:Date;
	bh=TGZ4GrrxIWj/u7lhcnIwFnPWOJlxVMzn6Gjz/PJnDcA=;
	b=Bf8H2WsspEJ1pdhk+dyryCR9dWz1EZ4bgHC/MJJ80TcBP6zt0fVCYdMpkDNqcXur
	lg3baACUIvQnd0XIyFBSGo0q5BD9QF243VeThnuPriV8zqhm2oxt8sPrWxcZ5CLzN7g
	z5z/amIt6ZOXK9y/ZWU1d50g33EvEh5ORlSfPSE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646047284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TGZ4GrrxIWj/u7lhcnIwFnPWOJlxVMzn6Gjz/PJnDcA=;
	b=CfRZWnHYkWEw0Vw5O99GNuNUwiaz8aK4Z1zvz3C2r9KjllaTJHbhNrRksL+9AHf8
	CaHmD652SSGMPH9/pot42SNmQTGg/3Ee5HLLG043p6RWHIL2X43Z4cBwOYTi6CurjGF
	k6Fg8RJlymkNepg7n2ss0Si73ZhMjU8tqhrZLSsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40104e29-078a9693-f41c-4dc6-aba8-cd83b6bf3409-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd874fb0dbf6143f77a677c4c0e9691556617cedf2c410f48ed591cee6b3b53b
Date: Mon, 28 Feb 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646047284
