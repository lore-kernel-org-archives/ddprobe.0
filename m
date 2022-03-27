Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1081515A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 13:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648387978;
	h=To:Subject:From:Message-Id:Date;
	bh=3g7Gl2eX8Ec/qHWspvZveeqkMAaTOOnyDMEiVE4BRlc=;
	b=CG0V8aw+5w39ubyARTOhulsNzqCK63dWN4qFmLX5ZfvLR2mJaxDREzxfZCyY5+v2
	JlnbtspUdz5SGYQgll9wnrkCySxYN41YZJ0MB+Ox5f+NyXEeu1cQTnBe+5+1Kx/opj3
	U5SvOfuuM+6xNSmoG7sNyvNKPj4QNCM3aqHxovjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648387978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3g7Gl2eX8Ec/qHWspvZveeqkMAaTOOnyDMEiVE4BRlc=;
	b=gqDpn21Ub6KGf6f1qcdfvwbJrOOCjnlvwDGqeVBRDvGi13hBvjbSOjvkUAK1zY64
	787yzE5BrKpyHidqb8VAxW0qidOR5QPyjYhM29gqyA8dPolGJelQNmd6AtNfAtHgt2f
	IFDaf14AwviTPu1mPV02LyuMxk5IZodJWxXZX/RM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb9473fb-21c719b0-e8cd-45ad-9065-8ef0e4588a46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8d73b5853ab289ba3b37e58bb8ab201579b2c8d02ef7ee1ecf5ba678f8de136
Date: Sun, 27 Mar 2022 13:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648387978
