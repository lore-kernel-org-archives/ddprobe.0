Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D2A290B
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 13:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649167078;
	h=To:Subject:From:Message-Id:Date;
	bh=NyWrgnhJr4sc/om0lWsMzEf+W1t2wrmtDb7ofuV1uHc=;
	b=F0JpNVUR/JpTz5y+ahGibXf65L1wB/AFDPOqS5Obb4MbyE04K2DJnm6LqerCaR8E
	TlV3PbGJoo//Xle4c7cZtVWd0RKpuFMBXlpV/gI4K4ukoF9SLkHm6dc5XF7mkOmG7D5
	iFL6N4wWY40Kh5uoLxXOTR3fYqZ8isakG7sdwnCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649167078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NyWrgnhJr4sc/om0lWsMzEf+W1t2wrmtDb7ofuV1uHc=;
	b=jMUSAajqYPnx3CA9cYf7F/5YR23XdsC3MtZVk4o+U2ELqjlkSg6t1xsyowlUFuss
	1MGpGz170x6kP3QUoOtTiZfHcyw2RlGJFj8j8jvSpzBKCsGlW4cnzbkXgYBiqamdrGh
	OG0FXyHpb52og28BpwD3gcbsnlM/gGzTiTm+I1NM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffa0493c5-00eeedad-d772-4d08-be3b-ea99bef550cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16cd5dbb4f1708e1f40556f9ccbf8792af8770898af3dfa1398a1900379c3f86
Date: Tue, 5 Apr 2022 13:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649167078
