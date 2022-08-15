Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F651102
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660551652;
	h=To:Subject:From:Message-Id:Date;
	bh=M8s4/cgdVSOExY6yaSP5S5cJHbveZ0U4LOJbIbo2gMI=;
	b=kuLiP2bDRm88S/O+CcOio7lgbyiYoN/v+1pZsFnzWun+x0x4dWEbBBLYNMMNGNeh
	CQSQKZ2BKub2jodhDwUUntnsnRcAGP8sSPBRKplQsggy9GM2wpbhd12x7I0Zf8/UKLG
	ZXFnwDZKQNVcqkmbzAbdwo49iAdhARuu48KMHmw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660551652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M8s4/cgdVSOExY6yaSP5S5cJHbveZ0U4LOJbIbo2gMI=;
	b=S7LdOfdm7SsIzCGL9ALtQk8VSlE4FM/eMnYDbZKVk5FNNdTwOWAcip1vX0O8UgbP
	OW2jAmmLaENpJ1BQ606fLxL6V6CV7LaYzc6rpLA/GDYeughxHfH0k1QD8nZPFXLs2fo
	ARDEpwyTctMFQNPnhX9j7/We2/R1kUtr1GJ0JQYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a09764c5-5e687e2c-8dab-4d32-9d86-b60a025c2c21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ae8417440a9c6cabcca98628b3ac407bd637a240b2c7bacc03167078a2e8f21
Date: Mon, 15 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660551652
