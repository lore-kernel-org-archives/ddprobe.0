Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C38810E9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659789052;
	h=To:Subject:From:Message-Id:Date;
	bh=i9SUfawu87/kCfFo//17sIS1H+wOovShGg9EsEAUlTY=;
	b=N7iuymiKzvcwqpwhhkNC3Kx8s+c/fBQAFWn2vsRGUDU9b6ZZwkboGBFy1n1M+T+c
	FXdK6X4/KLRZ3xT4dYRm9OnzAqaHLC+ylAdcCF3gbRyt/Au6Q+JpedgkKIQW3nydGTJ
	bnUOuJwfJ5LaDdKradUP0KQA46fn/Rb77oI8d+s4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659789052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i9SUfawu87/kCfFo//17sIS1H+wOovShGg9EsEAUlTY=;
	b=K4BobyMiwp48zd+UjWwCnNPnRqpyXMVc16v5AUJgVPmC9Ubd0YrqibOhlrDBfx27
	UqDceW+PH6Idu7yC4P0uv4FiVpvX4PrhKIcB8qQxG30e/RQr+rZAJQTAB4iZeQCfFnV
	Z9w08qSwCLzng/aMk0hPZM6E6sgr1Vr2pEdWqkTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018273230ac9-cfdeb57b-e9cc-4dea-af99-e7ddb14d8cb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 881c9401f478da2d7b482a820ab12f0e6e204948025a056fd94dbfda695ec924
Date: Sat, 6 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659789052
