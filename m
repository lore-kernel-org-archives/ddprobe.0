Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F3523CB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 09:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652952539;
	h=To:Subject:From:Message-Id:Date;
	bh=hnlFs+a2aRiMgpLymRnWsg00mZ/Nw5KWNuneelaCOEU=;
	b=Nq2CtN/tbuRrKRNgkSTgF0Uyscpxqt2c0VxrJKCmkGreUJ1gBfFJFPQXWxrAg76k
	hO6tlzNob7vg1jlXZY1NQ0fN/SrCZHKAsLnMJ04BF6QLjwrTVXpv+5Rb3ex13jUwoQE
	QdARZuK569jT6NUuFZ7Hv7CgGF3LFaRyxR7fvaGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652952539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hnlFs+a2aRiMgpLymRnWsg00mZ/Nw5KWNuneelaCOEU=;
	b=hLaNziHrW3opplbwafgXqCe/JFeUVgaZKBZvr26SWdxq0UqlGoUlYdQuJGPvUcN8
	VCGfm7SLi/0xNqQzlygrWHZjwGpfYcpXNgBDQBDqiGjsbwM7vZYLOkWIEU25wb268q2
	nC0P3ZWPb1kH3mljXUmhTrmDa3Ni0T7/s7oJjvaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dba6208b-e2949b00-f4b9-4930-b7ea-5475ab0fdd3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b96ae5a2772dac1ca80d06ee8402eefbc50a36f66e114dada5f578e8923e77b
Date: Thu, 19 May 2022 09:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652952539
