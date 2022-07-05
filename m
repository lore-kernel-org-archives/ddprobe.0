Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DEA7C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 05:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657000612;
	h=To:Subject:From:Message-Id:Date;
	bh=y1eUC3LtO/GUg3pih+s/DsqGoEMcP9GvMWGImrvUcb8=;
	b=Zt5kDKGNjdzYFgnZSdzhd3AfGBXQLVLvRgAeFQa+ya4S7wDcT5mWLRWBFERXDCQR
	L9XHRNGOxx66VbXVTMOvRkhu+WHN9rAm8+4mGkCJq5EuX36NdKUE3YMdMfjV7qhxg5m
	TjZ+9cg3IUGhqCnlyd2VRrK0GxtgyLP/Pdf15dvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657000612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y1eUC3LtO/GUg3pih+s/DsqGoEMcP9GvMWGImrvUcb8=;
	b=NO34JJ2nmVkBmZskJdQPi7DSnN+OIYRT/rh/G0BJMIs/GRaWKdgM9blQPIdeXXxl
	TxxsMjMVyxVRe4aB7mq7DFqeJbbU73yIuIHUL9Gwz8qVanjeNE82BdqT68cwYxlrIen
	m0npCkO7Hdt/E7ahnpR0qRCSW9Di79XxezSlVP7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cceed1a6-5943e02b-db81-479a-bbc0-de135e9b226b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bf9a6e2c0d31b97ec5a9b0c823e79208c59f063179c52c3d20058f38d9cc331
Date: Tue, 5 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657000612
