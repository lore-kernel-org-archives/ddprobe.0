Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEEEECF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 14:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655820119;
	h=To:Subject:From:Message-Id:Date;
	bh=Eq+037y3fVOo/aSwWFRadiIBy2clYZCvQBeptece7fw=;
	b=eb5uG4wKJUxaHSfUJ8qzULGjpW6OUIAfqPrNexan6uEVq5fT2zYdmUlwPq9auLV7
	T8+IuPozfyjIRD43aotcYcH5Sptpj8qCh1dpO2yulf69fw/Jb1qaYqm3iWaseTuh6Xk
	LJyRgnZyOghwuL17U9Mc7p24cgcly1hZozSZmJ6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655820119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eq+037y3fVOo/aSwWFRadiIBy2clYZCvQBeptece7fw=;
	b=gCLWwEEkUqFTLN+3kuZ5ZdIKXA6M8fHoCaHZHYdzkYrcDTYtMB9/p4fUeGH5Cqfd
	p54RZeD7/PP0mDVDrw55j78OYseoqRbN/+kgnT1LBgB04pwbI5s45DrvpyRD09WRog2
	OZDyLyhdiXVlojIeTEw+Tax7iM+2jgfMlitbhq8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818691ed0c-d0913e7b-e5e8-46af-be51-7b78998748cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a15830c5aacce8066badf05e04de85a9d65ca75555e6dd7c7a3c31d2ea55b3c9
Date: Tue, 21 Jun 2022 14:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655820119
