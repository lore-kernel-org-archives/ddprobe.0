Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C43F46BF
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658699812;
	h=To:Subject:From:Message-Id:Date;
	bh=Gw6y2iBHonkZVBdNLxbq7RC7nsaOzmUfUa+zkIBl/3Y=;
	b=LtG4865MSJsZlAZKmOziMYWI1+AmS7l6LeevGY08oD26PvsRJlp7xGeBh0RZRPTU
	4ULOxI9Px9mkjMCsApBIWVmPBmywibrUzNvevZDiY87jHy9cdINHGCULkbxt7MMjr5x
	Wtt8+aXKU1wjwgi2e5uF3pzXJkd/l4VCHF5NF0A0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658699812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gw6y2iBHonkZVBdNLxbq7RC7nsaOzmUfUa+zkIBl/3Y=;
	b=FEXAxkPVe+lbzyt/ZWIkZlm7rB1TGeGb5e/5dQGCjGweMY0iY9LGIvot+VO9gE2P
	uzdvJt9jKYq5lgn6NKwdeeLJwK/5xsHmilOajBoimxDXRq/Ei2ST5opjGSM7jZ1DxvB
	//7UZVd/uEFL4IoGV0n4aoLfgfdPZEDiOACUc6VA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232368dcd-1a5ef3fd-6408-47b6-a7dd-73821fd7930d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2d048c145b8978ab008984ed8bc7ec5d4f3160dbb795c5732b5061bf10ada5c
Date: Sun, 24 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658699812
