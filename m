Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A6117EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660898452;
	h=To:Subject:From:Message-Id:Date;
	bh=874uACdV1kYUS9FEgMtmRaixcWtJLP5LtIKB5FVhWeA=;
	b=IM7HrZfWUstLeZSIuOjhhy3vmTdEEavN3f5BYEaBj04hqQmCCS+JN/xRE2nT40v0
	z9Fj3pDcPFW9A/eAcJSdAMYeRdHuCGx8KRspFjWQ64aqywRY/uHF1yvykaoBGAISpz/
	B2AY6KNtRn+VDmrSxCH5Ty4CoK/6p1po5/MN1Bm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660898452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=874uACdV1kYUS9FEgMtmRaixcWtJLP5LtIKB5FVhWeA=;
	b=HIdgU51WSa3FEgZwHjJlooPzgs8zbYhn7G24lxLRfbG2v+9X170IicHJLHnhkO9Q
	dZyiQuZ7m+JIKoXI9j+jJZeywg8h8RxbgTbNcl594Hpqb3ZodTLpbO9rybtRADX3hac
	TA6bLqlnAIPQXT05taYYjs3szt3t2cqNEWdQfNk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b543242d-eb203a9f-1133-4045-9670-7da8db653c3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80994251a4a5f9aec5582c61ecc4e2bc707785586db5fb5cf4b96453f550021d
Date: Fri, 19 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660898452
