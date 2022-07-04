Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA217E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656955613;
	h=To:Subject:From:Message-Id:Date;
	bh=gIEHwRBKPxh+QJvTZGpUtfzDlwmfvpCqumUFCut1SSM=;
	b=XPXdkWkYaQ6YY+nUqGKtDCqO5evdnG+nPJMPP11hUs2/Vaz6uFyFM0CYkp5vaNtI
	UkCVmepUsdRqOo6PiMqfff0b/PzknjJsxY/+2llSpHtCn0S4e4lv9e1WzevUSP2BEHh
	M5uIgsdZGdTDkrNwz8Np/WU+Q4pgh/dhBnmViIKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656955613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gIEHwRBKPxh+QJvTZGpUtfzDlwmfvpCqumUFCut1SSM=;
	b=YSOvoWgxJ3q4LTgfZsCdnscEWm7yDJGwUVBXKU4XWnbmPuhIIbuY8cQPLaM9WhVC
	i7qVCzazMIYL+2qJaiEfn8kDyJvgjmLSK08H3lUV/qV6qYLeuiIPkz3+suNplrgxVYf
	uHl4Gxb7y9+UZTItCQwB87k1of7tq34DP+4d33qM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca402c4d-17d7119b-f533-488f-9de6-d8f654594975-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56651624cc5465b22d806275add442d4bb271f01d9203007bca4ee1c2105c121
Date: Mon, 4 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656955612
