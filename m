Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097B77A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 21:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655155379;
	h=To:Subject:From:Message-Id:Date;
	bh=pvbcVxiyxIU0dliPiXUguqAfOuMVGymTQBSv/QhJw0Y=;
	b=Sxfe7F/O/4cUgam60qP7DjCu5VMBEm7r9AcQZpbUpn0/Z8RFAebCV+p/wXHTyc3l
	1tmvKOW3UIafdxxV3Nf9jghBJOfm2YgELlm4bAJEYBdvAP/57RkxaeQAlw0J4mPmFdm
	Zwwa0daT7OCk6GSrpPp33pa7FMBSYbCdQM1NXmQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655155379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pvbcVxiyxIU0dliPiXUguqAfOuMVGymTQBSv/QhJw0Y=;
	b=VsQrVIBmF4XFZh+5SoOakV3zL3BPFLerhePI9CA1Ie1prubF6kW4rSyGDVLM24lp
	UecGfiaFQNXajHL9mhBWR/IOOMnmQAHixMIPn07E6rV/AjZdIgPL1kMIPeiZ7DO4uPe
	BfdDgOLN/5WS6bOezXYqovKSxWkEQjyTp+iIlCcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ef2cc1a-665deb24-06eb-471c-b6c1-3a8fbffa48a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76103f0344715f334f0019f58f4b7087af3ab61888bccb91ebe1aa0cfc7792f5
Date: Mon, 13 Jun 2022 21:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655155379
