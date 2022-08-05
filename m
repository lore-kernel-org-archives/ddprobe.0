Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F767C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659724253;
	h=To:Subject:From:Message-Id:Date;
	bh=t7jvknCXAoaS/Q+OEhyQbYxBPc+zL5PeW/mC10J9Rec=;
	b=i6Y+bewtzta9IFfAN6bzRj6FQ9mI8JaPfIKiQ63u+4gRbgZFUGtnwT4l90OOaEdW
	Chz9PIrIjOuCMwXz8V6qzABaI1mW8HHtyXsTjMNgHiuEK3mOAy3pnV8jf4YqaXv0fVG
	+b9+LOeCtLs2AnGkIhhp+Aqf4Bt39mpemGKicsFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659724253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t7jvknCXAoaS/Q+OEhyQbYxBPc+zL5PeW/mC10J9Rec=;
	b=hF+7cpKLtIRdpu0TzZBPds2cQtSgBD6bV7Y6QilUBeiIzFl28WueiY6RvC0zPrHX
	FyzRc/GOLIdTUni+xUGvF1QciQj32hT5NMQyndM7IQkncIXx21HXrYmLkQxZnGm9DtM
	y2fpm23SBGk2/TryV1did5/uf5HLhW+30UksKSw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f46459f-9b2bae4b-fa54-45d6-baa5-18f178e65ec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea8f0362e93dcdc771c388b4c05997f0434f4dd4e162b5a4237c630b1400a300
Date: Fri, 5 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659724252
