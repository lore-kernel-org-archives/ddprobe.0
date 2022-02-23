Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9D964E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645576885;
	h=To:Subject:From:Message-Id:Date;
	bh=qu3c8/2kUnsnzjdzfAu7hg8QlEhEdrBJbWgS6u/dTg0=;
	b=BskwM+CjYZMQ9djc4ipUl7yLRcCv/RwWd0OaJdscF1uCRfvynlAta9naHrPQJ9FX
	L5U4lXL3/Kcu3mQr8hbr+6liFU1Tvy+9PCxKWSDAg+HZbN4fk3J3EjnFPlQptbxWuma
	4Az2ipJhgygRInglaabRl7Iexk2RvKhg23OlXPsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645576885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qu3c8/2kUnsnzjdzfAu7hg8QlEhEdrBJbWgS6u/dTg0=;
	b=kWZb6Hpjk8ifs81fDmafc9iboM3VqZ+KOlQI/lzDpLY0xzc9msnIRAuM2QErAdz4
	uEc4vMuX++vrOJfxh6YsnhFGnK14CUV21F6r+HL4QmGvDpPEJfwwqEEZuyJZ8Sz6RSv
	jeqSouuA5luJ8WRnd+FsqTIKBp6ay5HSs9XAXtz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24069260-b84a389f-3385-421a-9567-ad62a64eb64e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5a16eaf5ca7a8c349801a9f52590951c936c4b12d266e7f6bf23919faae4fd9
Date: Wed, 23 Feb 2022 00:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645576884
