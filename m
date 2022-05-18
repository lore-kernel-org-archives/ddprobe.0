Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F67F7F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652866079;
	h=To:Subject:From:Message-Id:Date;
	bh=qUJSF4ir6Zo3+99k641pcFVuA9DQdzdpzpTwj/XEIO8=;
	b=VhsYFBT78fG6UvFxm3PxD49+FC25n/8yVUmY4z+2DhOOCnXF4WtH/gHh4i9LQYbJ
	PVHL759681lnPNSL89dYR5pFYONfQBgFmEWUsajES//39NsDS624vzg7tZNotZ50kb8
	8RL9mm7u1Z6SeGtA8Ah+Rb680a+rNn6/fgWbklpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652866079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qUJSF4ir6Zo3+99k641pcFVuA9DQdzdpzpTwj/XEIO8=;
	b=InE2CYM6icHPay/qxQl7HKFJsMFUxstaPdbEMEiTqGJPtYpnpZ7a5h9LibQuap/H
	wEdO1FpCZb8kQlNgDJUwjiP4h8Tv+/P7Aex6awRGUwVzID5XBnXk9VzqZBLXFET2VEf
	Eyvuj4arkXy+H421FUmlj2latvMbK/O6I4vk6FeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d67eda54-87b00388-d137-4d48-b1b5-c04cc4730fad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47ccf88ceeddf74c6e5a5b8646012de18d9c74607842cec2320ed90e80bdc438
Date: Wed, 18 May 2022 09:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652866079
