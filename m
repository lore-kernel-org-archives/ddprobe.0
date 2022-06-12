Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F137A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 12:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655035259;
	h=To:Subject:From:Message-Id:Date;
	bh=gGGB2p2kLn82rzFZMm/LwlaVrcw9on/Faj5NqShRuqc=;
	b=gPxKw9DrBjJoXLc6gbSgXBr3n8IWHlrmd/7MhDpDHc2gaoQr1CuiwXSsTzjIcXNG
	xRMuMj+HBz0nfo8fEebWlgU2j1jNJGhYmVF+eZjsGMNPX3DtWf8JkeTqCalWuwX0tpU
	L5MNcV5zGiWp031mRSg8xwBjGqMTB+ZKTVEWocIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655035259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gGGB2p2kLn82rzFZMm/LwlaVrcw9on/Faj5NqShRuqc=;
	b=aiaWiGOIoo21NksoOmbQgw+7j2jTO4ThRYYaJ9H4b1WWhFpdAEFIZqXe3SAY+T+2
	sZkKLP1sFHB6Mk+eG4nubhAiCImsLz1MJlviDtTcA23Azhnv55MmXuqQL9qyN0me2kd
	CxW/fzyAcB44COJjVEgCzaBvDNqVw1ujQgw9dOKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157c9e96a-c106f03e-3238-496d-8b39-8db65aab4d31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 463b6d07fb2d59380fff4b7289dbe10995f58528c0c90e86a46ed37cd64b69fd
Date: Sun, 12 Jun 2022 12:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655035259
