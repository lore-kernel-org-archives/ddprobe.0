Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABBAF2F24
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647854785;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+/okTtoFZjujwvsR0sh8NKuvg3rpgoE5bJBzoxdGEw=;
	b=I7mwADC9038lF0WQylN0I9NnlpnkVdrUe2AuShswOzoPTeeLwHJZJyP3T6SPu4PZ
	vytw5ytd6RlE7yBgN2TKUQ9zgz1uemmGifoe5DcEstLzh0e9WNCU8PegKNc47T2om3G
	b1zDoehjiouqZXVPq49pKmXyInB1or1/R0SsP2Zk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647854785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+/okTtoFZjujwvsR0sh8NKuvg3rpgoE5bJBzoxdGEw=;
	b=jFBJq5xtJeY5BPJ2LEtjbrvMod94TgER9F34vPMqxklYFXFIOJGoBEwksmDZraB6
	Tmufk2pLcF3Nv4hk65vSHBZeIN5KVDK21nHSG3T/PmhugxPwtWRkICZ5B5Fm8MizuUY
	vKyTSTcK2Wh4aroJP8iUla/veZrPtdjIJS8g5oHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabcc9120-672aeefb-2963-436b-94fa-59364a7b2d8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23164ba906d6bb4475e1c9608dd19370b8487d46d734030dc10d7f43d8198e36
Date: Mon, 21 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647854784
