Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C190D7EB
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660423853;
	h=To:Subject:From:Message-Id:Date;
	bh=XbND9af7CFmB4HcMrMJL7+vBcr0OnuLcRU3vuRYP5JM=;
	b=kosuoNhbmUC3mZqQZFNn37Db1+m4SqpjxIVcY7X8P8EIirZDVlCECGw1xww1+WBa
	i+yrOhp2rnLVR80c0QrMxzXbS85a1FDKy+1on/62487aTtgBRhtL3N3ryY8n+EYkyPM
	W6ez5kL8TR1RbyycIB1VIrk4VlD7QDmkWPN2Wyc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660423853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XbND9af7CFmB4HcMrMJL7+vBcr0OnuLcRU3vuRYP5JM=;
	b=c2ifS9uxwshGufjkCQ1ZmdV9zThvcGO8kGZLVzVrz1dpw8JdzPPP0lc3pRJdYGy+
	9dljfXG2yHXxDmr4/hTSmzdv0lW/cXjyYiJB6gyR+0h+1K6qE2Z7apuPT1dxF3ANusS
	+Tz5+21jCpxUMLI8SGNY3PNhdhnQOltYL+tHNvTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298f9523f-026037d4-3b0a-4cfe-b525-686a1ed3ed45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6eb49e3995ef7c2ad3b08e78627f542f0fb772ce2805fa281d1a26dd89b9cfc
Date: Sat, 13 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660423852
