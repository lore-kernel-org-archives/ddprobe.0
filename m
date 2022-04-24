Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FE12F2F
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 15:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650815218;
	h=To:Subject:From:Message-Id:Date;
	bh=bwyhu4h8MqFE7L4KR/03Id+ciDCMSqClZ53v6aaYDkU=;
	b=kfwlNpv0zHr2wZWPPiHgy5uLCXmMCiDlVX99SFaJgNKZ62UTkZlCp0Qqc3bxDcUU
	Rg94XNjpIc4GfbNb2KCmW6cYdxhcTmlNn4zrXU1LuafjEeH+7cmGeM0fn6vdwTihZ0b
	tld7Vz5zaOKwfkMjKna/fwAgX8kjcgFTtelPsHrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650815218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bwyhu4h8MqFE7L4KR/03Id+ciDCMSqClZ53v6aaYDkU=;
	b=Erla/bSipZ6M8rL2kxUHfqPj1soWOTZwtGY2suWzPY5pBLTNl1l77zozaT8HrzYJ
	Q0kBTLAdJOFy1O/1rk7Z5qAEFj3DAom7ORzy22m978gnXe3fvEFpshVANxSlwxerAeV
	2PcNDaMj5Jw+DXtzb6qMSThFX0MZF5mDuxBZY7oc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c41326a-7ed1e8a7-f5b6-41a1-8ba1-b90b2ab56be3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b22dcf546415ec259bd885f8a665331ec24d3897c6be539f0f4948e3ae29077
Date: Sun, 24 Apr 2022 15:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650815218
