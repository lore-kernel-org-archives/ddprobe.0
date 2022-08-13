Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEB5257D
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660419052;
	h=To:Subject:From:Message-Id:Date;
	bh=FImgH4UCxmnkp0Kh7iw0cWAES3e7rkWYm8ZZ10/Vv/0=;
	b=CnWF4CmHgneypXOGwqR7vd1L84EbSgyVG754X1scpL5uuLrskX1cFLj206GVUcwC
	jHsfG4MyMf+zB5UqhzrH3ghW9o22dUZzzXGY48twJukQoiTEbHZUEcrqLYvYjsCgqdr
	AYTGq0H0fzXtCfYNYBVgBhP0EovfnK3hjX12AdPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660419052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FImgH4UCxmnkp0Kh7iw0cWAES3e7rkWYm8ZZ10/Vv/0=;
	b=Jf/2yHMXvHgk+O+wCdMMFzFRGgN9mgtIafzO3uJTcdA0kU5bp1ufaiAtsg5f/h6j
	62jbPWSh6QM6Nyg4BBIxbPFGvKhpx9N6oqmGQjFOoSXJPfJZ016uHlvyPdbLOkE5EOA
	qX/5nhXyodx02R+8gffZ/MTQQS0Pc9BSW2Iz2rOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298b01419-81baeb0e-57e5-4aa8-a61b-227a36f039bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b56689bc9a65722fa584077921c8ed99ee3f57f8641e99f85aed531885f00c0
Date: Sat, 13 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660419052
