Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AB4A5B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 07:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654242179;
	h=To:Subject:From:Message-Id:Date;
	bh=8ISWi37JwhHI+1nBzAMi0xYPCPyM25eXYUkB6zGCbcs=;
	b=iHI+ybAYdFAFZpy5tRwwb9CRTHejEuC2tHsWMM3oOuuGsk+J7/jX+hDFfy2rkA/J
	jPalgca5yjcJb+gM5g1nBC/F6hDN8QA3UXnPkf6mC2fze3z2uq0/tzpd/dIsyZI9CZL
	En7qHLTsYnE7pCzjjzHxs86S5ulFUppNA6Q52WWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654242179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ISWi37JwhHI+1nBzAMi0xYPCPyM25eXYUkB6zGCbcs=;
	b=Ur6/ZS7uspkxqA92w0ihH/6AnLpQn5OJZgKW1KjG2RFshX0NhyAm0cEBzXIIO5Hv
	fx8jSO98ypIBlQJHLPvM4n+9YN/mBfQMLyLdajqpM7133O+U5Zs7OjYgvgyEkJe4tc/
	OizXYjr9mnoSSOWY5E5sSt217LqbO1A2LPF63zvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128847938-53e5b88e-82aa-411c-87ea-0612f78fb1d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aa78967b61108321a38aa9b714cb5d285cc2a09e0dba2ac4f23dba3cc8a7431
Date: Fri, 3 Jun 2022 07:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654242179
