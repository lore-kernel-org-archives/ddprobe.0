Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D8923A6
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 22:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649890078;
	h=To:Subject:From:Message-Id:Date;
	bh=dszqMgeyGXpEOb0QKqlKz/yxCdNoHMSEfiZGZKjHEtk=;
	b=TWx1gjKlfg3vZXP1EYxkOEn8hkTaIzQQIfxhKsjxfYE2peEZynQfIPe1bRiFbXO0
	DoCtGXhfsBDrcR+piDHkqXcNLRFXavHXW5u6/L2p3G9gktfoN3Ar/v1ueZd1JjfdsA7
	67pIQc5+Ahkoqw6YzCI2VwbImeEf6jF9o73OZmtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649890078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dszqMgeyGXpEOb0QKqlKz/yxCdNoHMSEfiZGZKjHEtk=;
	b=VDpPQ2UMrh5Q59JRpySBQ5VWdvNNpHdElTWC9SXJu26RvaFivReUiqNA3VBPao8N
	YlXQFuG4eVLsmijAuTm1tMKWtF6olyPcLP3Bl8Cv4Sq4hGm+O+tX2WGoJN8PyHB/hq7
	MYFsY75C0G2aDZcex9e78xEa+TKpI4OPaiFrFt8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180251cae53-f47847f8-ae06-4a36-a250-2c71e02c33de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4e42004e12f8001b04fa0112713b612fc3d2cf08788406d73d362d02989d21b
Date: Wed, 13 Apr 2022 22:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649890078
