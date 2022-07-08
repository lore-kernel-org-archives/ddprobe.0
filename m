Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4759F7EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657265812;
	h=To:Subject:From:Message-Id:Date;
	bh=prnA/H1ahIuAc3t7eX4lWbrTS2w65hi/VUnK000L/GA=;
	b=J8JnugYexIhnlyCVDe2IEczbe3tnbQOxlNlIsspq3an2sQmbekigwuQJci+U9TMp
	bWWiykz41qD9w6g1tdOfTi9bsZe8wuYJHA85/tRSOxlMcOtMfEyXD5/1wvBE1wRaYXv
	RgE67XwDDdmA8F09EsKjXEt+4RgmuP5aCdK3a0+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657265812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=prnA/H1ahIuAc3t7eX4lWbrTS2w65hi/VUnK000L/GA=;
	b=jxuVXtskrh2CnHdhK9jJhZro6ehGPujP3ZQReWv7kX1X5VZDFSvQXeiNHo4vPfuO
	yyucTmIz903Y8qMT5Dy6/hjHqDsrKpyH7oNG4m+H0XEbAmJl+lHOnFgmZIzOij30fs/
	LLavDZXCylikS6pOZYS2iWEaDwDp3YYD3P2oqLUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dcbd7383-d6db4fd5-1e11-4cbf-9c94-658f57bf18e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b16cc15c41e7e1372922eb787d1fa7568d4fe5f2cc9a448c617ad87b1b669ad9
Date: Fri, 8 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657265812
