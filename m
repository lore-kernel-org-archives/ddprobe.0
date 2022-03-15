Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAFF7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647372984;
	h=To:Subject:From:Message-Id:Date;
	bh=EKPy3JB6kUhhfJomLxt6FVqIaiva6biwqw/rAMo5bss=;
	b=PDJPaF+ogYMV8dEBx20fzmI5dGE+abXBnjzLB4g2QnFLHGjuWWarB3hk/373uNAN
	fBtQ9ZXpRlzsRUaGfbVsFVUtRFAxYYUt2WV/FO5jYUWSCwPOHgeGHFjaelkLo+7sKAf
	x8bwksLLZ4J7mJ8yZlp1I47fN8yW0z8t+2H5Bs4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647372984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EKPy3JB6kUhhfJomLxt6FVqIaiva6biwqw/rAMo5bss=;
	b=ir2apEhka04TcB8/lwFb7byymG/NT5+LSOIrlHj5GOXuBUVREDtN2i+15U6tI6av
	EyD3IYGvPae1g0oKEKlwoO5cK6POVA+5mQpb3NadmwZm3ZGAqlDDSZFntEycYT6Iy9Q
	H2owSrO218E5b8BHg7MP5iY1nBQtCl9R3aMdrtkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f14e19a-edcd9343-85a6-430a-886f-323c5f4033b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6429284660b8140c040f6bfafa22934222acb5541f8d5fbd8850ff6e260ab08e
Date: Tue, 15 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647372984
