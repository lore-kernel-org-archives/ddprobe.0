Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DD9650
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659592252;
	h=To:Subject:From:Message-Id:Date;
	bh=BtChYXnkhI/1XMtGQKKvwn5Sc3Tner34QPxLa93sjMc=;
	b=UyyGKxP3ccwE7azM1QwGtjTE7uOop2ihNI8mmVHolhsjpvcz8Kp/N1znXPtvlweH
	FsceypPS8iw/g4W/yQWEuG4FnynYw+RzQCSjmf3Xv918qzd8PQx9amRAgLqSzUJbu6f
	aSCwgcO72xLPz5TQN47s2BZlziOU2Xd5gZbmFSN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659592252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BtChYXnkhI/1XMtGQKKvwn5Sc3Tner34QPxLa93sjMc=;
	b=LGMf1SAo3xFQnWLocdzz2DjIWIttezdYDZJxittVKu4K4TkoE/hwjk8KYQsAcjbA
	G3jttqShKt8b/8M1Pr5JA+HXvNCgwgn0EKfugjD5Eq5SJHQfxtVgDXjXX3SffbUSeTO
	291HMEQkSwkeR7zpoPtxUIsXoGxjVDNILKLdCf6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018267681caf-9e0f4806-d80d-41ce-ab3b-1ee148e8673f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c4c63ef2e130c3153feaf38dc0b1d8274935252ebb06826a192ace265aa8da9
Date: Thu, 4 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659592252
