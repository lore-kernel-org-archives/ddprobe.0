Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AA07E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658711812;
	h=To:Subject:From:Message-Id:Date;
	bh=JAlmYlfZ6xakZ3/uenc+4Nn7BFB1d/Kr9927D1IIRg0=;
	b=X4NhSMM+EAttXzA9O/vcRaYRlFpcKslFeycXmXWycK3BiGVGQisfTLckPEzGa5TT
	1KCxLCMtG4cDVowjSxsD9xSBIA/4Ae5f2htQao8qGydCJXLhsF74Fq90ilBbU4mrgXk
	DepQ9UClge6WV6D0KM01qRWF0D7v1KfvrofBFTHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658711812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JAlmYlfZ6xakZ3/uenc+4Nn7BFB1d/Kr9927D1IIRg0=;
	b=KL1pziJThun5t0KB+kU14m7Wi7LRToXXVanh6bDOTssUkTvZzKMDbTqQmPjt8JV6
	HgbvOfO4LorE2yLCbYNShmlTvJ43Q7FkcEMfE/xaObWpks9QbR8PmO8MEryU7rXaxYe
	8WFaT2v2f+fW00+jfNf6DwADU17SnDmksyWL8zrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232eda8da-842f29fe-d0c9-412b-bba2-bb61eac8e530-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec576c588bb230173d636e4e265300e3c7acb52a1dfb9872962577fd2512d04c
Date: Mon, 25 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658711812
