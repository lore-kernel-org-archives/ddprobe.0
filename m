Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548DF10E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658978452;
	h=To:Subject:From:Message-Id:Date;
	bh=suwvG4s504gYqjcqSrZseZFBMDw7JIWZ0hqX1a6Ig44=;
	b=XekbzM3BaJs3Xw2E47R6Yf53k/xtCzK6XcubxeqopwOBXrSv9nV51h3l4FFbln8l
	PFZ2p3IE+V/64yiBFexWx9p7UdLOJaLo6HlG2s8PRKyiCSmlG4z3sUMX5XRvsBDqG4v
	hAc8ofun7zCC1yhbNSlH9EOOb5calKL95BfXLHCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658978452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=suwvG4s504gYqjcqSrZseZFBMDw7JIWZ0hqX1a6Ig44=;
	b=cgL7dctoesgDApeoekBKo9w+HkcJYwClTaC0avz869uCUH7VN5n4CcpdF0Lr2Z30
	0mOWMZQDxYePOYmFFi++6sN3KFsMxaqJ2MqbXyLfgR1QeA7cZmBGCUE3cziT3W9l+y9
	UC8zPlKGIvgDWhG/k+4gD3/SAcoXNNLAKHirgz38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242d24492-a7358731-18c0-4920-9210-2529ef8121ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd4dc5c643dec70f60af61da1d0a4a9d4b3f622636869ebf83e955fd3c8c47b4
Date: Thu, 28 Jul 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658978452
