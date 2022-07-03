Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E741FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656834412;
	h=To:Subject:From:Message-Id:Date;
	bh=XodU8JYZA3ZcLhdD58csxFG5Rg0kMGn6SMsW5ve/yMo=;
	b=W9Ny/Z67vWmckyb96GjBACGRmg75TrX0Z4zjXR2vzE4uaZBTJmPHv6oV3sgnLPEp
	kzpR3tLvjQHKRo5xyK/GlcOatY50hJVxgC/jgixLRxkq13XNXclKhtUg3Xrlk6AySaR
	ocxtOdhPcuzdw+tKN/DmNBuZiuLDqTDxS7boKBOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656834412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XodU8JYZA3ZcLhdD58csxFG5Rg0kMGn6SMsW5ve/yMo=;
	b=ktaEN3R+CpPGDjckQDOt0bkyLMCPAtIpYDlD0BmnReHhlE1uzihSMjS0cpJH/0Ua
	trSFfY0knP/2lI6qfqCOA20ZsCBZPnO8nQkfP8PMJyLPlG5+t+tKDLgZ0VNxxm9R/ST
	5V1w3RJsiCvBKjnZa1vLpEwcFwnnlo+xUWY/ZlXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c306cf49-49cc9732-ca36-4cb6-86e1-8afdfa6b1ac4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ff8aa620962be934124198d5448a56ee73c1559b969056caa0d779280e32b9c
Date: Sun, 3 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656834412
