Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D78ECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658141812;
	h=To:Subject:From:Message-Id:Date;
	bh=gKltfPAu+8dOdKPBcYFvR+WmdAb0EpfcyI8wC3D5rQY=;
	b=OVFCWSCDElDFW+1Gx+S4M2xxhLsnzBzo2keGQxwMwBsmswGdSoI/To/u+KdJ0XSz
	/Cnl/5Ta1UFpNI1+SfQ8Tkzem0CzGlxsOKBiCkypH8OlbWUswgvYHBIYh0j6bfiQ36t
	nAppqfcFfRZAw51814h681IJaSDjeXIsOzl9humk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658141812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gKltfPAu+8dOdKPBcYFvR+WmdAb0EpfcyI8wC3D5rQY=;
	b=ik3PaM/jzsqA0eenVIwLaMqM5YpVQUNA+9xQLUTrv5/DpFDUB7zh51frtq20Yb4E
	c8w8jaKJLPw5ahTBTVngaHjO24ENyuu4q7HNomKVWKKQe40xL1krbXkMAhR8WG49a/d
	Sf6cjqzOm1WuBOCczS0vIx2IZdzqqfjRL/JThRTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210f426a1-24fa022e-1d81-46ed-876c-2870c8bc15dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af40a6558b109cbca556fcf9ad7677acc8248c9fc16db424bea56bcfdd77cd97
Date: Mon, 18 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658141812
