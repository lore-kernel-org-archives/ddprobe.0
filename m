Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E307A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656139612;
	h=To:Subject:From:Message-Id:Date;
	bh=MvXc9hpxBPv+JjFlG34gJpTZxQbnzG9R0YEBO1xbUvA=;
	b=Fs9aT70zchDxH//6RkuePsp8QsN8Wkmq/7uL9uj/i7CLl2oWBpxnlfuzXmRrNX19
	X1t5q45brNLGRTqmMgWblsGvm0ZHkG0vSb8nIsbzcSJqRKZdLfy7Xd/3YF0xQYcvxd8
	iNv+9vN1dM2ysyy3iuaizsEzLUnvNaio8NHJ0wB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656139612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MvXc9hpxBPv+JjFlG34gJpTZxQbnzG9R0YEBO1xbUvA=;
	b=bYb9C/+sg/q2tUAeNyIEQLABLNJF84cqxQVnrSThN3ECuMc/nocPTC7nik0CJOjj
	ZmYVJIALG6NK/2Bw84y8A+YjMiyP83KRB2ZcgdEDe3RhYSI2f9aPPhQP2S8IhKSnuqw
	NGQ7DvOSPYvwksYBCQI0Dd23xuBn9B9CHOjGp7KE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181999d008f-ca4f2b12-534b-48a2-8d1e-0a81f5a7b91a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a0a97c9afef4b696006d82ef137fff3a31ae1e70edd1ca752e3bce30c644290
Date: Sat, 25 Jun 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656139612
