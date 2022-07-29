Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521264A23
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659108652;
	h=To:Subject:From:Message-Id:Date;
	bh=dBx0TqR0+2vroxThhpsHyHn8vaT5WSHfz4VbDh2iP2M=;
	b=lkN+V4SJat64TS7vCtM7zBTlZ0U07EE2VCw6hXlmM0L1wOJ3ShgRBRZ7vB7dZOHU
	x7JxMqo4gCTQ8plLkmHpTRy+/kQdIHyuicXpF6+F9v0xS7O/j+tsEs/whlQwk1rC/1k
	Ray+RD/1jj1X1RZaLYQnhy3tMGmssHLD2HvZ/a58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659108652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dBx0TqR0+2vroxThhpsHyHn8vaT5WSHfz4VbDh2iP2M=;
	b=RXH1ngAglIzSEOVTV2N2g+Dy7w/4rRAekP7WuSIwlNzn9caDPpTfgZpHw1sBVfvT
	nuvzQFDUi5oQ2zeamArAPpt4VAeTRjRhELerPVxTFMF9pGDMxiWXqMc/l6tyF8BQpqL
	iCMCr/+ciNWzEoL06bJXmxRA/iA1XAx+OrLJu+8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a94f621-b49a45f1-72e0-4076-8183-f0686f35f707-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d525f29916aeca56762cee8cd33e5a44136e935592554ba68a516e3ec32eab86
Date: Fri, 29 Jul 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659108652
