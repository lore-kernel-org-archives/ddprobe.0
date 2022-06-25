Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430547C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656192412;
	h=To:Subject:From:Message-Id:Date;
	bh=e0QfEvLuz0KMaywlbZ0sV/5fMBE2HpyXvd11L72Ey4Y=;
	b=iphhRrFWngo5XMguv5lpF3KMyluxBxK1B38z6pCukxbmb9mr+Q3uEgDQIviPkGAl
	BPIZBj5o0ALWUCaBft+lKrBeh6kl52FBJSc0VHG3gete1icEsIwEESOny0qQ5BD/XyH
	I/hm/bGyV8bJx4AEiN8Mg0s/hPTKvnsENEsDB3c4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656192412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e0QfEvLuz0KMaywlbZ0sV/5fMBE2HpyXvd11L72Ey4Y=;
	b=B3LhyQpWFQ7LCMw2w4WvYcorvPQ8imsAM2W57ccjyZsOKLyYpb0fsWohcSix7ZQW
	nqoMsvZa0mlsZd3sl7j0hoYLwvubViFd1yTGOfYpYmj0o0CVLrd1PfNZ0M73itXA1xo
	rZcAsynvTFfA1t+BLTjNKv5gZvKgv2gPgA2WjDek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819cc2aac9-570d4f2c-a571-4120-acdf-6bebe11aeaf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b19ed03060ba269c6cf92575b6bbb05e76d042a9b02530bfeba06cd09d81dd64
Date: Sat, 25 Jun 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656192412
