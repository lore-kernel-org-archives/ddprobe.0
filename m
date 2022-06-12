Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FC07C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 17:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655054519;
	h=To:Subject:From:Message-Id:Date;
	bh=MaAaixjq8QgpFCboQHe7iumtIPf6Twyhuo9ryfWxHw8=;
	b=ZeKnr9XGG63qdNe1cEABEVkr67/yXaonQNgYIK2bHNTMiua6WGozYoFwGGPqerPS
	y8r+TS73sEKGo+T08C6kODS1r5B+pPJrRLtFDNjCBr69zPvLrHnFvGjpgyIBo9qBP8t
	cHbOzpzO/RHeOLFgtfeh/vVBaZKFfjoaqHOuAxEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655054519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MaAaixjq8QgpFCboQHe7iumtIPf6Twyhuo9ryfWxHw8=;
	b=RA+NDvEg6EExX8c0N8q+tAt3ivpNQ18LHydcPNlDXFo9el8bnernfokkDAK/vpz6
	Oda+eOg7WMUxtH1RQ9un1FudvoJuu6Df4xzmYW0cLdHyzCiJipNb4yslyqgik0Dqof0
	vY/N+ZaVTfJokJ4BgyUN3WoX+IsMcZVGzXuu/JjI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018158efcbd6-82f38535-a2ff-47a9-a1c1-519bc40dda15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85a1cda6d33dc15225b7375023fb1870dd79ec85b7d643fe6ed29edc82462fed
Date: Sun, 12 Jun 2022 17:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655054519
