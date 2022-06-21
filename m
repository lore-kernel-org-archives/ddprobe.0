Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD777499
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 21:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655846279;
	h=To:Subject:From:Message-Id:Date;
	bh=vPHZkd1s9soW20ZWh9TByRTs2nho3jnCBZUm8bFFT08=;
	b=aHhkVLrc0Ac8mMDQj6X3ldSSgq7O/zvGkta2J63+Gd8nkHp172nU63H3eVgVF1jc
	XCZaaImrZXchvPzxBSDu0ivkEaSC1rOvhF09TlTTnRGHSxRFEWxKM/O3Q2caw4EW4on
	cBYObhsLcYlKubyoTXLJ2GJIHVkynZ0Ai5syHwKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655846279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vPHZkd1s9soW20ZWh9TByRTs2nho3jnCBZUm8bFFT08=;
	b=VA+Oa/R9X8Bq2AiINGgy3L/ZubD7fL7sZP+xjgMH4/bs0IejQk6JKKrFcNu5BYZw
	rEOp9P1k5ujjnjKs2Dg+hgIsv36yNqR2ope+wxNj0NsPK9KYiBlYhZy69ge84vT5qxS
	FtOjM+zFkzAx0t0URc7TNf5frbGydEQYKmfacSlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181882118af-ea55effd-d6a3-4763-9e06-29624235412c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c839b637a1289239f97c41afc48899d9a52236d75605bb5440df71eb4c36d1a3
Date: Tue, 21 Jun 2022 21:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655846279
