Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0416E256E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 23:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652486339;
	h=To:Subject:From:Message-Id:Date;
	bh=Vg1/bUs1t8mBbhbvJSHwhy6VB3cAalLkDQFvuqwQc18=;
	b=MPKaiuC2XnAu7lmqb0buW1ZIF/+nDmPSn+pxEKm7DsESI8hY2bQ4cz/f6uodKa3/
	JbcAmk/vjQl3lVIr0A2cGzxkHt/2MHa1zMH/J8qe5FQsps3iulZZrk6S/EV/yzBMAaI
	AAcV4Is5SW4d/I1q6jT1W8y2bPTCXyDDcYfFrVbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652486339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vg1/bUs1t8mBbhbvJSHwhy6VB3cAalLkDQFvuqwQc18=;
	b=AoUN7+nfTY4Q0b/hFNF2NIdhn4Co25T8cp9BsGt99EFseoc7y4+nCWx3vGb0qEmO
	E0Y45m/aOuGkDR940E8aF+NO0/Q61iu2KXhGuHSpEaa2virSINhgD9Vmgq+5flm8xhq
	xqf10/TwDtd7sdJsdEtSSTOXDzQzyMqNABNEY740=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bfdc7b08-e78b290b-8169-42b6-90a1-b05d9226d7d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddc779b7e41b40513ef1bc1c325adb918f190ae890e70e418c803df3a9745c85
Date: Fri, 13 May 2022 23:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652486339
