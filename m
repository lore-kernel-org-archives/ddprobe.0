Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5388B4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660059052;
	h=To:Subject:From:Message-Id:Date;
	bh=QIR9I0rGkK3l59Cj5cXmg53wKBiYrs2Rlvk1YT9Cgdw=;
	b=STRwveakvqezlZv3mrHKajjnlRzSZWhVUR90Xx9Q4A/CqbtpD+ro6izCccFMTYBD
	yTyRW+9qV1FD9BJfRdb80GFIKTduwTtcdce6hsbnqYICKXLzJoyDOubqYxfEgAX+xbn
	FUo343377Rbb8JU6ZX362vtKP3mTgJFSbnHi1Cko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660059052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QIR9I0rGkK3l59Cj5cXmg53wKBiYrs2Rlvk1YT9Cgdw=;
	b=GhU61SVWRWUckqt8s6COY4lnzUO/VfYoNCNsUBzY09GpCdp+yuH490/+3sphFw40
	0Hi9dcOPU7CcwRvRwoTKPF+ENcbtKQ302dNPCLMi2VcIWQQWr50DKQc5HFNYXO54f1w
	mxTwlCq7/zLnFyL1Y9UrT3f4DNKvLuVKPxKbYEJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182833aea36-2d5d804d-7a11-46cd-b6a1-87669fac1abb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9707b9daf44bab036292fd6bde0d9a30451a63bfb03bdf6f65310318a2194c6
Date: Tue, 9 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660059052
