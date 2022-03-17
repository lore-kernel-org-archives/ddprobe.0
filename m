Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2B32F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647539485;
	h=To:Subject:From:Message-Id:Date;
	bh=+iRO888zcZ66/E3J6iWL9LLtMjTNQUBfcDAXqcOUh4Q=;
	b=FJHt1dB3MN8WCjEmfs8AFEtYVDOKwOhBgaUmhBdUtyH19uXb3YDT7E6bIrhsk/M2
	9gzfQNG/K5jwperZr5qejfZP/BPex4QcXEBv/V4UnT/xnR/r7yI6h+URvLrpTGKk+Ot
	zdFE0DWfAmi1d0848Q9thBUpMDPIdSDqTWDHk35Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647539485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+iRO888zcZ66/E3J6iWL9LLtMjTNQUBfcDAXqcOUh4Q=;
	b=khfTwxJrr9bFziKyzxfeo0GZvvgJk4AQH7iQzCADVrpCLm7+/Hk0z9Dp+41cP1xw
	FXIq7fY31lEaS7lfcNqQBZSf8371OVOFkZ5Zt89OQIQaOYRm34NGNcoH/yblnxqoYVN
	rHrgTUai6Yxq3Sgo6hf5mkxWn+3lWZNnPhFCytPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9901786f-4c6436e0-efcf-4ec5-bbba-ac9c4f763b79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e8e687274786a88b5143f0793bd7c88652331d08e50e7e841426c5069bf964e
Date: Thu, 17 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647539484
