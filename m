Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61087B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660803653;
	h=To:Subject:From:Message-Id:Date;
	bh=Gb115qIQ7H3spInJeO7GgxMWW4uYzTeMftHZ5dBeTWY=;
	b=ISeZJlgOI/XlXtgczq4j477Pt9+f0OqRXjJWJyGRKTuOa0QqrYDl+LEnf8zr+u9h
	lbdye9/KFXMehNC/HuAmtA3FtCMnZ5Gz3W7tpfItMC3d4/7OD3zLDEMzhEPytpjYoGT
	xflClIJm998YIBjiKZXnyu1EvHbTziCQlyLhJ7u4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660803653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gb115qIQ7H3spInJeO7GgxMWW4uYzTeMftHZ5dBeTWY=;
	b=EB+wYqaLuh1YR3gbnzaHxCwMcvfg8OaLEkzzZbjIGJ9kFTy2801GJxHOzOqZ88Z+
	wJR1E37FRdN+b2Yuqi6KymdXD3EFHqEegGp6Yvoduh1u1n18+suKXKpAbonO11BsChD
	f7ud5dScPx7GdH9P7TcGFsP39VRBsWgR4/PGYnZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af9c9c1c-4abb51c1-4dea-4940-95ae-ab9e732a0197-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93036936a5fb0503c6b86e60a55ca5626203470a41b5c3daf603e201054fb120
Date: Thu, 18 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660803652
