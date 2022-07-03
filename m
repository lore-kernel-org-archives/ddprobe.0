Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D36923CF
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656856012;
	h=To:Subject:From:Message-Id:Date;
	bh=6ppf0U8L3aTyiMYrtIvCH2G77fWxyh2H2tF87UOKpjY=;
	b=ez4+VfzDb9MsqcZ6038mcsYKrQkKObNCo2UnFsdD47TuFRNzILQS+07XSmw7vyfx
	UMt6xGRCmFQoEdHLdrPs/OnDfgB9VjJz2Q60Pig3681KHSo31T/kaqjNV28sjeWQmcN
	8BMwoSl40S4x2tQWMdhD40Y9uaS1u4Id7/p5/nzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656856012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ppf0U8L3aTyiMYrtIvCH2G77fWxyh2H2tF87UOKpjY=;
	b=chbRGNcnwVDgQgu3IoUpVLMB7aXh1IkRzjuMUzurQb63bA9cR8KSlrn9HPX41JAC
	qYvJ5naSoT2Rpi9I99FYN/hni6sRk5hKFB+BHOiCAgvcCLQsNXjZkiZIRiJ+gx8cJOm
	veLSqFtxG9vePYNu4Z3O3vKs+Dg/xde0GoCAhn/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c45065fa-11a093f5-a0d2-45f9-89f6-ae834d2c54de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ca6dd12aede8cf5565ec71ef2d5b77646bdbfc0dda577af6c1a43f936cb742b
Date: Sun, 3 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656856012
