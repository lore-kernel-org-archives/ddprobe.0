Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735997B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645495885;
	h=To:Subject:From:Message-Id:Date;
	bh=pWrmJFDV72R9TsWs5240AUbC+k/Ewn/19ydYEu6IeDY=;
	b=hP8DO+15mWNnNHrWwRlF0Uw24hvVxgYo1C6Oh5AfqbzDUL8AeTsgf3Do1rZBoKSa
	944E+TcBvQ1Pucx5mGVejUj7LxUTWjaRoxVneCZ04JHy9WS/sG8DxZY8/XWACuHgzaa
	h1g7ws3LBSyJqu1pdXZI0k8HaY0s1Ks8Ii6i4tPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645495885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pWrmJFDV72R9TsWs5240AUbC+k/Ewn/19ydYEu6IeDY=;
	b=ZHLQmWGDsvtatG8TCojFXA7qrIo/yklnb0UXLfdQPDvW1afQ/hFgvcbpY9B74D0B
	qFJ0TeJtg8yZrX1UK3StVCS4CHshvmxtLD7ZdwofNfi5l1d6bB2S1M4ogSzcR/xbR/F
	9TxldZ8ZmuX5Fa4JdFsUkscrFV9wLVa1RjdbvDrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f329c2b-7980e04a-fe23-4a88-84f1-9f5b33903eb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbb9421735cba78fd04f28c0c57eb5a58eb2af6d6925a4aba53e2df5c3b4ab75
Date: Tue, 22 Feb 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645495884
