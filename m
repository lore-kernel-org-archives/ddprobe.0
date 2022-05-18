Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C2F1852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 07:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652860619;
	h=To:Subject:From:Message-Id:Date;
	bh=USEp1ZSarD2RI5zKGg9Q8nkfY7nUevi43rGFtfzrwII=;
	b=WUk/SRxGqolyrURympJ47WU0tKkCuHYS4lBJFNXOugR3Ya22/hpQxpCgadN1lfw2
	TJiBnWFyV7myA3nDyxDVQIop7nYNt8lJDVjbKQ2n+yVQXckvlKngs9FX66rDrFilHbx
	fSo96O2C49FmXhjZ1dAPByLG3bfwSqzS5Tod3Rt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652860619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=USEp1ZSarD2RI5zKGg9Q8nkfY7nUevi43rGFtfzrwII=;
	b=ky7DW70D3DJ/inR4IUNi4rxl0/zXIUU/CkyPuMu5c/fTy4WNHm/JUk/3VHHHRMnA
	q8X3bJNATuldEHcYTT2XVwMY5+1kbqUW4NyCYGLBsbnc0EULE5Z9bpAg0mtgJr0bP6n
	U17kDcsXH4OIrCaFk6TuVOPwnObwbzUTdMsX2c1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d62b89e0-ac5655a7-17bb-43df-824b-cfe31c6e23d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b008db9e43c078caef5e9c0f0f352ee9f23ad86bd090c0627533ff745769836
Date: Wed, 18 May 2022 07:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652860619
