Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BE236D
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 00:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652489399;
	h=To:Subject:From:Message-Id:Date;
	bh=erN/Gl4fZv6GrYRIMpisykEKMHTqudPSuva7FeAsJ6o=;
	b=EYGQWmOP5/Pyh+d5OTvoj0t+JXhVPVHrZQjIqLpnpR3ufMX2bsUK6QKB02XLhkjd
	j2/GqGv4K4sti082DeBgMkbgZ+PPTJYv6a+ORWSzkOBf7fKTw46qdcich2QnrD6lz4R
	UdArusCrCnyKfk9rzIUu9rTt0/MQIc7F+OvHa3bY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652489399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=erN/Gl4fZv6GrYRIMpisykEKMHTqudPSuva7FeAsJ6o=;
	b=TxcEVv6OFD1Xr34rjdQAZv0Hat0oaBei8bdEy10fMHonztzeZ9H4QYVC3mj9ygQl
	VqiNsN4uUFjSJGbjgAPDVQ+N3yXRh+RWrosezHX2RO3Ity+f2FW4x66weVQqDtbu8KG
	g9nJgy1PxddptL9wY7XETrBh5p5/wlyuUdMgfcyY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c00b2c40-d9ebee26-2f4e-4eed-a263-8c0e336245ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2581ea62e522479c4ef9f23bef369f4b099d8ee2507269a5163e8555b7c70d01
Date: Sat, 14 May 2022 00:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652489399
