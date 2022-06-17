Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6AD7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 06:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655446979;
	h=To:Subject:From:Message-Id:Date;
	bh=ob3BtcI/wU6JSqJYf/aJMvRxzw8qcOnWnfzJJx72Un8=;
	b=QjnXvSmF8oEDtTVYN0y1xJaT2J85DiCO3phALHxoGA2GaVZduC0SHvpiVTuaWMC7
	JUPy085Qvs9njhmh6wQ4RWfOaAntJEplPkzGrYC8jJTZvjJ7G0ZP+dvdS7w17Em82Bj
	T9t3fAGuPivGaNwH+DIp9yz3gikmquNyR8AGSRgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655446979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ob3BtcI/wU6JSqJYf/aJMvRxzw8qcOnWnfzJJx72Un8=;
	b=StgRd6BunNiVpANWOA7Xcd95TE/nh9DeubCWqRQMfmwA/twFtgKekXO0GTOvER6T
	sTyICFP6oBroxOmNLFbtScY5t5RO4JNJS/9yruSnWbFRX5GMTUiisH+5dsWgw/fkKl0
	UhB7wm301WxaL0bGQ2nfE5kZOcCqAEvI23pAVTus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181705442ab-c551aac3-41f9-4a9d-ad9b-504e64f1de91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 642fe26d41e4cff785e4786dbf81ddb9a496951ea2af65f1c652f14188e0f607
Date: Fri, 17 Jun 2022 06:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655446979
