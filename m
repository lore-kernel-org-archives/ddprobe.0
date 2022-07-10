Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D2B7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657492612;
	h=To:Subject:From:Message-Id:Date;
	bh=2MwHuYqDaxHanI4g1tppXsO88Lie2rJIQ1jn82obqOk=;
	b=VKCWKpunzJQVDIGFn2tBXnwtqnB/3hU6ydZzwEhiB6iFPsSpaxPfls037wvSNSbp
	sprwkBK+uE7wO+CNMwePp8Scj08aZwKKK7xGaC5W2avKJTevQ/TTlv/XYrhBpcZw2nq
	nd5FV4uGTleEqmp9K4W5yRmyt3nomG928vry2nog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657492612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2MwHuYqDaxHanI4g1tppXsO88Lie2rJIQ1jn82obqOk=;
	b=XGkEL8kYEPCd9Pn+nzGz9wD7ZBih9mESt3WZusVTT9VdIjufxKNVDxb378S60c3e
	wtvkt0gh24lgR5AMK/FNIcZzwlvpfs4WcAG59X6gYfQjFRxSwgG5W1Dy+5nLMSCQTfg
	UfifBf+PmqZXKeW+40O2NS/KdY67EozKDMox7kTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea4224ed-2df0b5d9-f6a9-4087-9e23-ffc9c66469ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 916b15375beed4940e41b0e9cde585d218f4516cdfbfbf228561580d2f543687
Date: Sun, 10 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657492612
