Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F58028E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658483812;
	h=To:Subject:From:Message-Id:Date;
	bh=nnq06DyQym6Ezzh8Pj2iulS6nejkpazfoq2KG9Reu5U=;
	b=Aekqs5hOWmK/q7Oo8VIrKnkd90nBkDt1da2TsKV+Dq6U1HsWEPNF/I2s/W0oN4rL
	F4cA9W4bwpdzKi7jHaTupnAMw94cQnwcs7IZSEIcgRHYGtGiTjeiz+1YcZ+RPKmMox3
	Y2okbaK1Tx+MbE0C101vjZ9U1303NYwp1j+6L+xo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658483812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nnq06DyQym6Ezzh8Pj2iulS6nejkpazfoq2KG9Reu5U=;
	b=DL4RYgd9hpRO/3VvfPqAjd2ILO7hvs0+h263W6W6UxeuGDfphAAM6eOtlXkYFpOI
	/YDnvriJs6z+XS/f4hk52xZzcoDfffFUKqZTpLEdNNFV5YCNKQYTacaEoXfW9Q97mZ8
	1D0Xxbi2bsz23iTQLbFp8rA7fK8Laz32HSAh8ZBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822556a7df-9ec49e9f-2480-4127-a84b-3a129031c450-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1739b60b92ae0bf60b9e7d016e21f0adaf82b98a66330331109f855ce10a741
Date: Fri, 22 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658483812
