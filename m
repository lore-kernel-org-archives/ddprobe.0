Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039D23D6A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656703612;
	h=To:Subject:From:Message-Id:Date;
	bh=vQH+d6u0dkWV75RwxHaBEQwylpB3kmce1A5kEf57pj4=;
	b=OG8iaiKVdy4mYURbVJFMP3MOIlV9CbzJzyKHAqtgYt/Qkr7pkp/TjR0dnfrmr2eb
	1eGno8VUrKYYqZAdCdv1gKhZKVgHqWozG4g0rclNDFq+NHLfKNxMDU6T54+6FSXZcoO
	g6zehyrAjQQTEfKSj+WxxU13g2u1BvyZHsoDw9zE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656703612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vQH+d6u0dkWV75RwxHaBEQwylpB3kmce1A5kEf57pj4=;
	b=WZ2z+TIah3FkoqoShDGMWK7/bzURgOFi858Z1P3by+6ZGCbaxpzjBKwaJpbHWLzI
	MUyxIWD0ZZ33ioXt26l8e06j1Pqf9Ggej/TsMr40QXQysH2ZiOEpyjPjg7LYCewGAsn
	xjeu886ftJa7rHeCcGrcxR0Omyt0OhRT3InH74oQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb3af590-485921e3-4e82-4d35-885a-4ec27ae44f91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 312463110ddf062408160632c0e3faf4fb49a15a92c28868e1f2a7255fb0afdc
Date: Fri, 1 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656703612
