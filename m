Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D421362
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660366852;
	h=To:Subject:From:Message-Id:Date;
	bh=vcI2JBlEJe6YzmiDxTDFMuP92p9t/ITta7ZPKfTgqSM=;
	b=YCmg4Ce++90IoKUNAs5OydsoXzQ/GF3UWQ1JpfRmMt4ggFCEddVTSb/Gz4RuhNhY
	xsscuxAITHoB1jdgnOvFltrxo4E1edz+es3nnLNFTF3oLZ37HS5LeiHy0vuOZ0wXRr6
	0ss4rQQme7e9FU+ooZKCBsjH4RVKkZ1Sie0MDto8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660366852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vcI2JBlEJe6YzmiDxTDFMuP92p9t/ITta7ZPKfTgqSM=;
	b=N+bPvnYUTcM0yqXbqgjn+FISdVecbY1iDRtM/I/Bv18sclAkbcSl2o1zc6rHcM9P
	HQ5axBs/vHi4vgYnMkRbW8zbBybv60ejc1p7d8+sIbNDAs0tJr6IUga1Q8BJ6gncXkx
	QF0H/RCcihQKeKnjFxg841n+2zSlJbjYYO+Jk884=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829593919f-5dd3405f-c670-4db2-a38f-080d6412705d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8142dabce7c3cb581bcc517d24b15766d08db9492098ce20251f666484e9bdaa
Date: Sat, 13 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660366852
