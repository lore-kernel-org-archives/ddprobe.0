Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619AC7B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645777284;
	h=To:Subject:From:Message-Id:Date;
	bh=rTxtiE3GCv2p5ylDD++pyCxI+M4Y3/EddMf46GErtzQ=;
	b=KI6usOOV/K0sBCs7Q70RPBW2SKfCkhJVKVVLQ2ST8WCQ2YvC9HBy52lYvkOTGjKO
	77PId2Qo2QtXEBxLhjkko/7p/LlquuKWDK8jMON5unWNkY8Ad8FKDjOOP0vLmGr7zgT
	+yuNQDvREHkJhmM+FNvO6pl3qe39oHJnIXYF1xdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645777284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rTxtiE3GCv2p5ylDD++pyCxI+M4Y3/EddMf46GErtzQ=;
	b=SZLm5UGrLOGgAz0ClTJsO0jSL0/gWYglBClVjHb9pAEVoUoNxc5AgOoAwKgsLDcP
	MLba3qRYkqVh1Co/GNmRhHyb2VYLlhRjAUvvjhX9Qx9ohIBWpiiTXQbnw4GIhuqNXOx
	jKvt9brgD0Pi46LHHAYtbnVx0YBXoAHQif74J7Cg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ff86ea7-b7f7f844-f8a3-4423-ac0b-d71eaeef5da7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cfbc8136537de81507efb833ec9e391457e3ae4ed1db225d772553fab29fb04
Date: Fri, 25 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645777284
