Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913FB2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647478284;
	h=To:Subject:From:Message-Id:Date;
	bh=0hM+8WfWcKk/b28DurPMOVpGDF0qf//JErqiW8OA3DU=;
	b=Yw+D3qM8AiJj+V+O+cYEl+1tTF5l8LtZ5z86oFyWVy4I9ZRHYzC7I07H5hogehPp
	i0H0CZSDWkj7pmwczvyiIdVicnMRmAKExSY3mGjTunQwAXHkHvRgqbpiu21nRsXImTg
	rPRX2r/nwMIKK5cpjP0zWZRw21zllOjXOP0gfi94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647478284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0hM+8WfWcKk/b28DurPMOVpGDF0qf//JErqiW8OA3DU=;
	b=X8Aw/qERWiqa+yhtDvd2jR05cJlrqF8LkajlmrcPsYxOEu0X6XJpPPlCKs/RucR1
	QJwl26Lp8PursDJ+vaiJezm7gcixZvrTFw2sskJVB1JmQKd/sTcwIAXNnV0VvBtcx0/
	aJMsQ/uBttD1CEEnGaxcWaVkyD/FBsKtkm/TfUJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f955ba1f8-d4cfd228-00bc-4a48-80ce-588b74e9fc0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 476e88f522a85fdfce1fc4812900afcb629735547a008acac86758174fda6333
Date: Thu, 17 Mar 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647478284
