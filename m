Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FF3621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658809612;
	h=To:Subject:From:Message-Id:Date;
	bh=haIN3IRD9Tl0YrTJ+UErZbjp4NA7LaSjKwhKR37aNPo=;
	b=N+odm8IBZ1zu+RaBJ1/EwA6Ai5pW6xaAJtXrkw55pNmBNLsl6KsIFuzIQmEMQDFU
	MKdJAlcN4oteJXRmLEShkcd+TscTVEb9OCEeQeP9hRnZbZ6CPeMjj0ucM99NpAFsFLe
	MhWysoNP3n7X8LMbeTQnygBAxPJq8V275sBDrgps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658809612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=haIN3IRD9Tl0YrTJ+UErZbjp4NA7LaSjKwhKR37aNPo=;
	b=VJummWnzWb++PI1FRCo5m/kkgBnwtaH7E0lAD3J4rtWbFzCor0D99JVPxCk+TpAQ
	B3XhO0/gZxI0tw++dw2SrkyAie/o8kcLEshRxDtO38VnPfmW/LjVVLxVODjd4eb2xkp
	lcZpAhJFi46aaILPotejmfjh09ZWRq5RMIfhD0HM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238c1f80f-53979aa5-ab3b-427d-9ee7-46048ee00405-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 647bbe1abb1373d335601ba14706b7a4f32bbae1bb133e09de3d7e3134731366
Date: Tue, 26 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658809612
