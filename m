Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F88A7B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647828084;
	h=To:Subject:From:Message-Id:Date;
	bh=1BFHRA71awu1u4rSODb+nyQOJLKOPeMohNQcWuRiGwo=;
	b=XCxPdEmvRODi5g7uyhk6eruH/jiyvkAuCys6kqufX6AzgoqryvVj8TvGLMmUTweO
	zzB/13LwpGAVtNJ7BuOGhvHqYLBSxH3XECFe7vM+LAlFaRfCZmB9eB19OTBKZzbQVyb
	dJzCeAYneGvvGif7zXWozLFkPVYA+n7Y5bqH1430=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647828084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1BFHRA71awu1u4rSODb+nyQOJLKOPeMohNQcWuRiGwo=;
	b=HPwqxmA1A555K4xN+ks4keLMA59zrpLdUTS3szpDkwog5JPbNAePaKRKtBZ1sdAu
	7fSgkH3TEgunPS1Wfp3T/UP6npQ4moMm6Ox8PaL86XDHh5eVdthdkcNGwWXlXP8b5gL
	uwZM/HxYKFyxaEWAaiULpdrt13bqpRbz8qNOt1fs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa3527f2-76362990-0eb2-4a85-8e2f-5c09112bb8cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53d9f5a776e1fb99223be8836cf5ecdc1c70bc7f5b027dca2a02aa75e20d2d0e
Date: Mon, 21 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647828084
