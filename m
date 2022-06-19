Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32F97B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 17:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655660579;
	h=To:Subject:From:Message-Id:Date;
	bh=EScQ7GVGxGc9ZM7eHomWNi0abi7P89K8SN5cgl+y76I=;
	b=h16DVHcbPSrG4jC81WzrbiJCX6TVYB8l6CmmKXZ0R0cmxXZM+i/+CDKu1b4ft+iu
	ff+jl206eRxAf9rl5SU4sqsXcuFgZvUBsyNrOAbdV44QlrGin0loIrAEsKywpArrGz2
	YwxcXB9MelziRowEns4gCKx73iDBvPRB3PJScjZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655660579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EScQ7GVGxGc9ZM7eHomWNi0abi7P89K8SN5cgl+y76I=;
	b=jdW+K4FjdeD/SZn/Cx8GdCKO8GQuWmnkGjoHzrd/DKPdrojzbYI8YfxMEJaVIAml
	/bCUjyULHiOpsAd2nimBuWNF8Yd5L7JicIadT1W6a56KMJ6LNvliSHlKgYXnzOSWtvI
	xIxPRbIqD5Od48mQ2VuTpPNmnZ0QSRdH0ttSu1Js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d0f89a0-2ffec0a6-ad07-4af2-bb92-a6eb883ca479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98f151f70a0ad8e4e56ca191192abd6f3e9f35fce9bdbaadfae05cc03990185a
Date: Sun, 19 Jun 2022 17:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655660578
