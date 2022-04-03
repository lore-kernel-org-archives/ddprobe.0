Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD891FDA
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 17:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649008378;
	h=To:Subject:From:Message-Id:Date;
	bh=tBu/2vNvzSEPJPXSAVCLDCuxb/NmZv0Fqstd8kWzg8s=;
	b=Qz+LqwZiLIDjtOLB03egezoCvn+LgMFORwcjsclHA8C5J2lP2Vxcc08+YZFKI9zP
	qT3pbbjNpAnIqJp29+6QpRlvdrlBvPQBkZUScsekLTI93J3HuG7pFvvtFpCt1WvnOAY
	v1YmWtc6UDMR/zJ3PUSD6DvEYgROiNPPg+LNcs7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649008378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tBu/2vNvzSEPJPXSAVCLDCuxb/NmZv0Fqstd8kWzg8s=;
	b=X7joz4Ea4Lmntsoe9Uqn6MnbqfMhOAetpXJA98WhJES35dhwTo7SjA59rRN5tbWF
	yKCulLfF8Hts9s2hUT8uAQM5SRFeSGbTLQmSCz5RihDQJTGl42vmdt3Lc2zUH75TPpZ
	F5v4JrbXCSSKPNGqb4MXBTPLM9jhV7yhxwNlbjvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff08f01bf-4636e25f-e604-4294-b7cd-30c1f8e73aff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0f1881412ae78634b478ec3c2f5e9aa79dc9d6da533330961cceae61b943396
Date: Sun, 3 Apr 2022 17:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649008378
