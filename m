Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5831C7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659318652;
	h=To:Subject:From:Message-Id:Date;
	bh=PBBLb1SIj7IKm6o6ZTFoSF0RrqvJA0nRn5YPSPsMHHs=;
	b=IG/TUeQHg+NgdUb2wn0n946hksiGAFEBNkHQLaAaZa2oqPVhAAjSaE4ehl2UxMSz
	Ngvjh9hwxlCsUB5QP2hfFKQY+ki/QsInhrrC+UqKoVqM6DSPHX6RCkeOFYcg4sEjBNw
	EQafcelwS1w6wWza9mi28FGzFsS62xXZjnhAT8C8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659318652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PBBLb1SIj7IKm6o6ZTFoSF0RrqvJA0nRn5YPSPsMHHs=;
	b=IJadeeJENcfiQbUsFTCW/mPTTbD6mzqtTGdqqil1VRuLGH6DjGlcjYWuzAuiWtqZ
	tkRUuqIJHjYoNDOX5XggKjN6pI8pM1+ui5cUGOMFUveqEbOzKMQxuT7iPf+K2I+rgP+
	7v3/9tmyughooOr/VDH2kZkPaKz+xAhoIdylEVO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257194e79-b53889b8-28c7-477d-9b3f-1c111dc12f83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc279f4268f91305b088ebca97939c4cff1adc51255090d8c44791dfdb190e97
Date: Mon, 1 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659318652
