Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E90428FB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 15:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654615739;
	h=To:Subject:From:Message-Id:Date;
	bh=FGaqVwsEMt21eaXPe59xF2tZmrGhAlmy6Z1KetZpWjo=;
	b=Q6k4Wxofa2ujBIK7zt81bBoS/RJZpr49l3i2SROfV/xE7zjC3luJyIAROx7fUaa2
	HN2PCGQtiQDtQ8qOEUPi45KrivFBYL/DBHM4LmatZvuZHH1Z0SPLUudogWAzcGvfouf
	rTXWMcM77u065WS+AfKvAHrDuvSGqabihMNuLA2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654615739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FGaqVwsEMt21eaXPe59xF2tZmrGhAlmy6Z1KetZpWjo=;
	b=ICEXotSHNIOnCSDvQFzQ5PVrRA8yPiUrjP8yGiqKI5+C9KMbOJn2aqzObeQICM91
	/EKv9RB4556NXxd0/oivCViqHFQNL2YOE114E8ncwFzVsZG5LwZff8FEDCVxLNAmB2q
	U2ImD4ewWHXNNhABFR8UKx66H1x9N9VrBHIilSwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813ec88b80-e6044023-08a4-4c4f-b97e-e8e68d826742-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a0dc452e4955a3f9374088adefe273bcd0472886b614bf15640dcc255ee4f25
Date: Tue, 7 Jun 2022 15:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654615739
