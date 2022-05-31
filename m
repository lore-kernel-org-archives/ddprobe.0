Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336982562
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 23:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654040459;
	h=To:Subject:From:Message-Id:Date;
	bh=oa+s1Cxp0+uEkv29UdSSs0TbDghEy0GsALeucAleWYw=;
	b=KAzMtd9mfmJcPfqNEDTXoW7nNVqU+Lc5mfrgyiL0pRBhmEozppGwfE4J3rQg7hmZ
	lCUIHDSxGNodhUoyYSo3F0jFq3EDCA37sk4ekAL46/HYYojKnCTG8pdlJpjRKMcwOUG
	9K5OLMX+638sAMXAgp5Zhxo1qOgefxHF2S37hEg8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654040459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oa+s1Cxp0+uEkv29UdSSs0TbDghEy0GsALeucAleWYw=;
	b=BR6G+CaZWoT4tIAqseMhT4cZ/jVHbUXqwgNDBmwFILC1BfoP7Up17KLgldrFDqCC
	clmkyTpccGt9RB5Q9sHQKvqiwZPNUgFL9m++pzXkZI5rCmuxM4nCZ/T8DqRQP1Syvxt
	zaqUy7Xu+4tMxM2D7E9tHTwwN9sw009lepN/pvQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811c7e785c-4f325e97-3e3f-4bc0-946f-fefb75440b03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6065e21f3e27f34fd922fe6a6d27d4316481a839b106ca670d8f568e77e6119
Date: Tue, 31 May 2022 23:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654040459
