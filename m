Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0218F7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657398412;
	h=To:Subject:From:Message-Id:Date;
	bh=1jVnA6d+dfyrnMkER4w6J4R2jsA2wB80YzOnKrIOTQA=;
	b=UfrnuoKIIpouJyLArzeQhcO4ddZqiq+3uFNJuBBt3pZlyDyq61od5AGjCZ3IHqaI
	ZzyIUdg1fRKAo9XjCJKZa0VfbFRRCleqV5SN8Bz92esBavyedp9jhiAUDHI2fR/+FxO
	ly1qeNp0B9HAfoisjMYsyNNyR7oAdAsLNFvZcxdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657398412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1jVnA6d+dfyrnMkER4w6J4R2jsA2wB80YzOnKrIOTQA=;
	b=dcFGfEkqTYvu6CfRL7nEyDmXACsrk5Rh5q322g9GxwPYAzCC/cG/w78hb/D/r330
	QZ0l2YTEGRV//RMqULO05AdjWWisApVWTo0c22yYcpgjwoLgxx+ecVOnQHFGgJnaLyP
	q0u3f7koMmXGq15jlvJ6jaqBtf5J10lQo1O/R4yE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4a4c3ff-ed9dacf9-466a-49e3-9ab2-db60df8310cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d43013d4f09b49649b4edd4b8e4925ae6143c638b691f0062bac9b1a4a10704
Date: Sat, 9 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657398412
