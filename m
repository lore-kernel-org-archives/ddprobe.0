Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424641870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661362252;
	h=To:Subject:From:Message-Id:Date;
	bh=ZmWsOX1HpHWYMCvEJHEbA7OUeeiLZc7z2Uvy/n2cpAE=;
	b=KHPqigWa/2eQj/1yrG1qkH6f54+MSfvY0oKe9AVZwt1+t5Ysk+cDZbeQXlJVT12A
	M4KwugWOWSBoYTJoYeVtg72GXYEWlnFajLp7IS5hG1nObJmVHKsQVBcLwo705/daNF+
	k6VAeWngk5weuPRcI0GTb9SosUlzJ2cSo1IEzjrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661362252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZmWsOX1HpHWYMCvEJHEbA7OUeeiLZc7z2Uvy/n2cpAE=;
	b=HK/gFJmZ1WaJyGuMBTlZGAgdEyqihyGf4YaVcB5PlE/+napDQ6YYhDknOEHa09g9
	fYCuTPSwvNK5m64P1tuu5rciYLjWVkHWzQiQFpZGI7M0axCeknQH7A6STnVIUWGTwaz
	8sUEjXcobIKhKS0kwkpu2LhFkcfSRKSYZaYOnfcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0e82afe-6d44384c-9fa0-470f-8aaa-3ba65e411f84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30216cf9f8f84383db38b3232b80e4b2414c52ec264ac2281cbbc696b0eb07a2
Date: Wed, 24 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661362252
