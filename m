Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302B633E5
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 17:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652376839;
	h=To:Subject:From:Message-Id:Date;
	bh=LSbiL1wQoC6UQp4u3HI64zIfbGXeqXvwphxxp4Ct1Bk=;
	b=KqgxKFQM89OICO2VzCTIKTPGTnNVakXYAQVGZUEQeaZHX9EJ7q1ChfM0qrpLno6D
	eljBCEcf68ijiqQPI40Cr3B+n+S7IB7Gd8fM3PX9vr8zvIWpozPXp9ru1CV+eiP6L5m
	pUeCOF6pvksgXdx08eLdlPsb001k4S5+AnQ7FNhY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652376839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LSbiL1wQoC6UQp4u3HI64zIfbGXeqXvwphxxp4Ct1Bk=;
	b=iPhDJjhNrWT4u3AmjuwVS7JbE7ujTTpZO02zXXrgW/uFBvB1m3aBHTGqgY20YYfF
	one5Um5eiDWqf5XObnjvz3dKR6dTSFfYQh/vHHIrMfJiHq8KA8vSO34umD30OrJPQUf
	4c8gzGyP1P6zzA6q8jkObDbNjaHNAx6iW6fH5ozw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b955a492-271a7e93-0576-4983-bde6-987fd17aa710-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45524b1f8fcdf07a948ca3c8689d82844e1c085e8b9887ad4fe2162cf23d29a0
Date: Thu, 12 May 2022 17:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652376839
