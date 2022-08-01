Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8096F7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659350452;
	h=To:Subject:From:Message-Id:Date;
	bh=ytkBIH+pOazPQaJnY3sqaZBTK5ceVQU3EPL0DU15inU=;
	b=jsZP2+kTQmK9+Okfq35g6OJr55ciVPpLnlvOT2Tnk+zGCpmeI3eL+MmBpZFvr91D
	rRuIhuF4i59z/VNkQs6o3EKZ0lkL0dvbdeaDquOKeSXubKGaC159SVWr7+Eu6t92eRD
	KHYvVnXKroAtcrRVSxhXjFNrmx0zUlrPf2KEhWek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659350452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ytkBIH+pOazPQaJnY3sqaZBTK5ceVQU3EPL0DU15inU=;
	b=kgAVcTGQb34O0ysJlst7xzdPc956KQ6IVhogbWkiGSyOL1d5PPjGfGF9jzfEORWx
	p18LVqY1n5yOmM/GVkzGErjHnURoLy7l81u5YYo1nanjZfd/Ct0jxT0MYoV0PsNfL91
	WuKprWtACThavj6gUqSBQ8stBKNxx+LmhIwwVRso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258fe8945-ce002fa4-019e-49e5-b22d-ff670aac64d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd3d2e24e92303db7fe2c6daf464f20dcbf18c9c44a346982a5a6af6ea8eee6b
Date: Mon, 1 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659350452
