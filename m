Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9B34ABB
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647559884;
	h=To:Subject:From:Message-Id:Date;
	bh=6/Nde1vQLQWjm7BgvZBtsaY11YA8fMtB9TUMXyI7jA4=;
	b=SQAfvEiFn0nYFGvFXRVLxqG0x5w1gNGLRlpVJIXdpDTj+K0w1jzb9LLnxMQHDlr+
	xpFa7qMrhGg3m7IsKi5rlTtYGTzhk4rtdKsDdwieUIq5NbfgcQWh82pR0T+MIbAjeYl
	/6fa048nyqwTrJbm2tyOnf0b+6K2m6Yke2Z3trqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647559884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6/Nde1vQLQWjm7BgvZBtsaY11YA8fMtB9TUMXyI7jA4=;
	b=Rb/m2CxA57SiLm8U23HEjnCBKgCzrdcf+ZkbxTWZ7Pw0iwGAO947AoCVtekITgll
	22/UjT8rRsqttt+hI2+uqDAnIWR6qvaMNpixLW65lpwUtOiUhmzKnsWk57XBkwsU9SC
	ercxI9e2o6mTRqEArdIyI/3L7ryn78/oNC7T/7Hg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a38bfde-cf7f7e54-ae7e-4278-8737-52b3735658e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d83651987d1b28ad22eeea41c855e2a5ce78fe646914485812f85343babe6016
Date: Thu, 17 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647559884
