Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427597A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 06:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649055058;
	h=To:Subject:From:Message-Id:Date;
	bh=P6o4DhMFtrdRuSf76HgThPJgjG34RTqEcdFTAeIWew8=;
	b=aPIvjG5D+0BPUyH30b5ynvEv1JplMj10UoRSr8qs1gwE3oAjVmp5MUBiR6kpOpcG
	9ndJGAfzaU7NpUoiUl0r39/3vWWc7P5K4J0CFrEOYnHJSH07D5yTEvD8D/JC6VyjSWl
	iSmL4kk8z5P4Nek6/M/JGVQ1EvLznXODJgd2eD5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649055058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6o4DhMFtrdRuSf76HgThPJgjG34RTqEcdFTAeIWew8=;
	b=VPZxGUZ1rdaWfjMc3FRSUvkysLFkS2Z10BmpQk+qnNhfe2pBITBXiGceBRcfYayu
	auS6kJizgeYkK1MpUWvOdpkppG01BgfHT/wvh8FlvxQNKrsndvF9VFhOZUh965tXBMp
	ek6C6uo4GXq0KHlBMo14KkLxSuD0MF4tzvSmmBP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff35749ac-48fd64ce-a91b-4fb0-8ac4-c8849f8c5114-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b0181ee7a1631fc4a25e7718dbcb8f11978e980bc5ff213761a8ffce2a87125
Date: Mon, 4 Apr 2022 06:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649055058
