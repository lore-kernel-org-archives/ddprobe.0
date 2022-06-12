Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101DC2F21
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 23:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655075159;
	h=To:Subject:From:Message-Id:Date;
	bh=VA3qer7mTN9wqzdcPg0gPUfMjWrJWLrjAd8WU6TV4xk=;
	b=WU4pWE+82wJ371eZGTxCcREDZMi9aDQoDEdqw8idL+weVCWoZRO+myUeghcojKFZ
	BMYIOGot9GmE8/UJ7aqMJOLcLolmrajw642MJhAooi5W3e4rBkP0noqzcVoUuSXlanP
	FfH9PDvvFurpn/SeW8cGVCNbaIBAF//7XlQX5Gs4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655075159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VA3qer7mTN9wqzdcPg0gPUfMjWrJWLrjAd8WU6TV4xk=;
	b=IYH+u6niHZULBZb7uIrRtoVKmzKZ+Ozls/wLnEV6IUyYXn29IRTffX6pBEjhmaFE
	pAZAXtM4wocAeF8ufqbMZVywdCngBpgAgIFlYJ/fov3zLvbdACXuYRSmr/E86pRFJgg
	YEPNyw8kfFFDstDrCjNkZ9Gi7+UT3Vxh9M3eAVzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a2abce4-ce9c648a-918d-425d-8142-cedc3cdd9e3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b913760f3cc6ce9ba1a174d7683e9dc021ce08ead0d2c4d4af76d5524db8ec1
Date: Sun, 12 Jun 2022 23:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655075159
