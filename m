Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C77363
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659609052;
	h=To:Subject:From:Message-Id:Date;
	bh=RnUjvIBAzC0QokkKGeuupsydS3ufUpAInXjTrJLWLq0=;
	b=VX/kbWebXorU0U6IjRu8lYlPCg+l9CH0RX/crtCIZRGU1hwaPHqoYxmV8qT9RllZ
	Ibq5oYNWaotPwtW0UOeemEUbtttskEhNFu4hwF8zuEGdsOzl4Ix+4Hp0tARc/a39Xmq
	J+vW/xlmRnCOq/TV40657dPgFzzsjhNIoOWzQ1fg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659609052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RnUjvIBAzC0QokkKGeuupsydS3ufUpAInXjTrJLWLq0=;
	b=iFOIDc+ifoOv4E8uwBbkBLZf1+am82PahRY5+kVlPoIfF5JJXHFl2OvH5ddnAxbM
	pKD+FCa29sbSK2rvHHl9ew6cTx3rTyEVz7NMYpmTrFOcZij1JoYMDJkpIOXhdCtj/k7
	UROiOn7Xi5GcopIl/cMGhsXcu02GMy+PR4fJwv6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182686875c9-41998009-63b7-42e1-894a-83c701fa86f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0b63059d4ba3d4031836b499b419efd2df58eedcd032eca21973240e06b991a
Date: Thu, 4 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659609052
