Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70C928E0
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 10:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649844118;
	h=To:Subject:From:Message-Id:Date;
	bh=u7axdJ5Pn+gGjHpNBMy6mvrezCzMbILApOyCWkt+QC0=;
	b=UJL0y9yB1EA7uBskj5l70/BDJqXYhbcL0/L1gltul4Niiknc+PmGQFVobn/FSAUf
	kLN72EKlJWJA/QmpVaa49/8tZ0na4tPLsP7aYN435Bc5SLCcU+PXpW6skRg8S9eWwo4
	Mu0R9zPZEJi2vjfDXgknd6ocr4GwRaZG6d/q4al8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649844118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u7axdJ5Pn+gGjHpNBMy6mvrezCzMbILApOyCWkt+QC0=;
	b=KqQgIyPT9MfPhjma6EpGHhFFVEZQ+HP4Xw1ZHWaz7/bHEu4tLiO/6FMl/j/PPgkU
	TvtEuyVO6P1gRgAW2yinswDSabWiCRiBogCFCFc8S3K8xQ/m4m5zFGQj5BnWEjrkmHo
	hTIu6Ebwy+vmw+7JXEcFWXs/U9sPJlpUbbmBpNfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180225f6301-9f5ed236-bc5b-4f01-94b4-ee0e07f68d3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d245fd361af18c4b8c954e9f4a1d1a78ca442d957f927570d08d2ca36d67186
Date: Wed, 13 Apr 2022 10:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649844118
