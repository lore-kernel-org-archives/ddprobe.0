Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B54710E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656650212;
	h=To:Subject:From:Message-Id:Date;
	bh=Yo8ck4CLpcPSyJsggASfEaENizIp/+nZHaYLd0pMA+o=;
	b=UJYrNWljgJcliOf3PvFFk58GtU7qvVs5PJ7VGrBksoVF7BmDnf2+r4R6oeUT/geZ
	j1ginxgI00JA+7AJIDidUgMi4DLtWoiG+JqgS4g/EMbxYDyjwJEs098OST6jxMtM8C1
	sLhG0SrbmnMn42gUZ1roJ90XIKQX1AVObzNyqtac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656650212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yo8ck4CLpcPSyJsggASfEaENizIp/+nZHaYLd0pMA+o=;
	b=S9rS2trg2jDRiYbBnUJo9ELiKFypHNdte1ppWUxThxJ0cFRulR+aukhEhcULC6gz
	7uVAqwjn9JB28t3gHYvuGVHrE1dPhlUPez1mGn6jqVBIIT//YIgR3aSmkmRuoeurgWn
	SFZ+zEncehwUlpsfdpL+ik1TSFCrvNEaOkvDpEO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b80c23ee-3855eb54-bd95-45b6-9b6e-cf0064d428ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 519566a96ee743453fa480a1c643f0da04f14a0d1841cde9b11013167c4ab6f2
Date: Fri, 1 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656650212
