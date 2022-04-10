Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D64137A
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 18:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649615398;
	h=To:Subject:From:Message-Id:Date;
	bh=OhAbw1i59jq7O1+BGefrc7t08mxu0xozZSXJnHNaTXg=;
	b=MOOJSQ8hG7doXBdIYhTsU6sN0Vs2xq9afE+K+tINNqcyTFS+exFMm+3RgS5jKZ9E
	Y50ypmIN9YoQfy10ph+ONZ/x8xxcN6cVVPnC59YTS2PV/HW9/e1tDdokismY0/dn9eV
	Btv6pN7QhzhDJc1iHdCBE4/mGSRvWEczBQS/+Mtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649615398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OhAbw1i59jq7O1+BGefrc7t08mxu0xozZSXJnHNaTXg=;
	b=Dw6Lhi6DhBnMI82Zqsp+NNw50Ic8MIYOgicI6uizjCR18pYIKfmVZDSgsPfC/upb
	pb13/nTxX60KCO/3+7UqIDKduIhky7AABbU2olrcCnnjMge5joXHxqyNEX8hO57UOLI
	NNKLQV7g4GfGrIv12o8CXsk8yqluMG2dCsaIn6R0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018014bd65ae-b2882922-0fc3-404b-9717-bffd95cce57b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87bef7100dd716a458df962a7af5bf6c8420d4e23447cf34c796b1e52f4eb9d9
Date: Sun, 10 Apr 2022 18:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649615398
