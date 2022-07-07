Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE60C625
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657184212;
	h=To:Subject:From:Message-Id:Date;
	bh=d91DlkiRmDvTLk5YqEL/MrANQWmDzUumlN/nda5X1K4=;
	b=jGrICklbMoDSs1zD28NoB7dEWzpcxKV0tesF30RLiArIcKUr0rXSbOzwVghOUD5J
	Wykm/4gJhTBo7LwniNgGPO7eqncdyerfPBN0XsYT0Luuk1wd+6CIDjunO6lnz5ETk5T
	9T70xFzc10Cnp3kqBWu6fM9Wj1XaVZuHduITL8xE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657184212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d91DlkiRmDvTLk5YqEL/MrANQWmDzUumlN/nda5X1K4=;
	b=DU6vvgaId597Bva1Ilmf+fOtcmqenUyiAIwrEUBNEV2i7Fu19J9LAIfg3+FSi3If
	DDql1vdvrOtwEysCId0MERJCNq8R/iYjgO4UE52SVQzo/TzanyXvQCo24wMOMnumlBE
	T1BI13jhZcCC78fHyp34iFxFq6xDKGIWCczkfj7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7e0550a-86aa342f-2e09-43a6-986a-5b99c2828a45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fffbd8ed9852e7f27eb5e2f1044cd472541e009feaf94ea147ef71a0378e684c
Date: Thu, 7 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657184212
