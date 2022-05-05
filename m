Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6DE363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 07:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651734058;
	h=To:Subject:From:Message-Id:Date;
	bh=a7zenBg36twbQRbLD0fYNVJ8h/So+P0+WQdW/kg07u8=;
	b=keZAy/EleScVU5tj7ImAiEL1OIs9zg6qiLU8nF5jjSogA1odoiTp4wdcMOjIg6Q9
	HiENSnDZurGtaAeOTlpP+n2Ck6czCUq8SvUIn8BNfKK2SRM70kvU7CSN0OWXNEmNL5I
	RlCg5xuxAvl3bk8nq5LVqzy7sNRW59CTNyVNYfM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651734058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a7zenBg36twbQRbLD0fYNVJ8h/So+P0+WQdW/kg07u8=;
	b=QPxASj3GfcpE7H8Eb2Lb4b/rzIpxJhZmdrfgqGSc6JL2+/6cU8zkLTWb4GOKFKcH
	TWFYSxWlvcmPvPIJX7jn86P7KnzGzNnula4i033hf0Q/2JGHLF8/u0dnyVsB/PLHs/p
	tJoSSQ87K/Nv5uebx+zgOTDyFkW/G8u25H8pYSFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809305952f-78da1a0c-383f-412c-a6f6-a5c736129753-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14deaf4cf40d77321a1a2b3a6adc42595c1b70c51c887ca74b615bea59ac7fdd
Date: Thu, 5 May 2022 07:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651734058
