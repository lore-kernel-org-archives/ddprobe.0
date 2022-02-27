Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C62B4A83
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645977684;
	h=To:Subject:From:Message-Id:Date;
	bh=YKjyOGf8OTgmI+I3tiAtP1QX9jxFA3IRjBSLUfU19YU=;
	b=MxWlDpDffogbbynln7TFay8agKvM1WTNR3167KMlp+eNr701oLy5xdGjI8T0VhyT
	LW42Kwfoz+xE0Ea8Ha9x5TImNRmBFETsWCdrmEb0Jk+z63UNFl8kehipP9liOwjveeZ
	Ix74EyOr4/cOK8kXODhzbSAQWESWM5wDXDHSnwds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645977684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YKjyOGf8OTgmI+I3tiAtP1QX9jxFA3IRjBSLUfU19YU=;
	b=Y/11vstPYf42vJDqHOive3CW0A4BDD87HiqPe1sLtepHGprwKQUKrhxddfpxfTRY
	hD/g9N76PlVEdZtNsLE29yTy0B991meR0IV+y6tK6Nf6g9x+9RKMvG5HbCKTv7oLuFp
	d7YUisS8BP/rof51PwzVa6ZyhTPVaIiTSMX1RbUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bea4b46-e1934335-0244-4fbb-a4e0-66e712726f07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc00fe9db5a063c9a667d23f7d256d5945235ebd6d977c720d31a5bc414d9c5d
Date: Sun, 27 Feb 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645977684
