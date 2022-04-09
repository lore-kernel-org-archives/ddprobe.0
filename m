Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688D37E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 20:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649536558;
	h=To:Subject:From:Message-Id:Date;
	bh=5Dllt0KLq4VCcqudvYrJJvngvFooqjdq7t/OaROm+Tg=;
	b=meL454nYN3QjbGtR5YVBioMaULvg8uF8bFcDuDhfgkhHCQuLmvT3oCwk2eOFm4lR
	ed7AdEigOw90XJZnxhFWQSQqkG4irhAMvIKUvennmG+0CsRJaK04kN1iYKWgcicV15Q
	r1BGrB7LgDC1OhS+BA9jLr8llue7QLklhSoPFc5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649536558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Dllt0KLq4VCcqudvYrJJvngvFooqjdq7t/OaROm+Tg=;
	b=EbDI6ZM0Q3hgnanmHcb6+LzF4kH2PEIjSKgD0Gx4zDfP4i6KYDu6gE7LkNelF7x7
	n2i4dYCRSfv6yONYP8N6PvVTnf5MCincoWyae7SpQAuoxe0knvcsxJXBpUbGYIyRaOL
	fhsZ4SQCkf2TEFe7lIdTj42Ly/xcoFcF/OowRnlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180100a64c6-f2c07c2c-006f-495f-ac6a-75c99b509901-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c2fa61ec045c70396cb0aaa2dfb44a9aefc562b41dcdfc6d1dcc01b9d58965d
Date: Sat, 9 Apr 2022 20:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649536558
