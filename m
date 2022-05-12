Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364C03D60
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 20:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652386439;
	h=To:Subject:From:Message-Id:Date;
	bh=jICOU1ClUnqZ6Bn6QbjeWItbOCmiMJwjTGdZBB9uPrw=;
	b=DcPhCo4RMS4GO/G2if3CGNShLqb1DJEhJi5BceEkcJe37/MH8f/8Oa0JUTpkEM2h
	82KWzq0dxgLr89mpTYPC3mQkMcpPRZtOyz8MDcvucsp2Wpotj+aFOlOOOEDbggew41t
	Jt+xHspwmgDRevx5o1wlNPT7lrS3y1H6HI/vQs8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652386439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jICOU1ClUnqZ6Bn6QbjeWItbOCmiMJwjTGdZBB9uPrw=;
	b=ZJycw0HxPRzyV1VtkWcRiZS95z5kzEDDyGaYcbRNWKXq6dZajd7wxStEUV7+ng6e
	Y5ZFpy3Nad52Kaauwq3CmJR7kGOYtiJ1XsljnyG2KLoWUdaxwg9RbtyLsDOsKFJR5Sv
	usqbWj6xHyWXKwabAbObcWpUxTrXSAMnT5PXxnww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b9e8210a-49f4197e-10e9-4b82-bb0b-d1e78b37deaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67afa3c260ac1e039a3dd5c9d0fdfaae7ac801db5755f42d2d34cb7d1ba02daa
Date: Thu, 12 May 2022 20:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652386439
