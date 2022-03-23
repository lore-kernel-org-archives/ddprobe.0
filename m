Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9782A1360
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648015585;
	h=To:Subject:From:Message-Id:Date;
	bh=RKyDOuUVaSAOlE4HqBTl74UEHBJPqo6EnmY5E1wz67k=;
	b=f7adO4NYmNDEbfYbDnN5Qj1m0WcrdRP8zi7WyMpZRT7KQ7VNELWw+LR5Ygd7R3tj
	TwLJ/D+Yp0Jb4QJ6Y0jibAIvahCe24MUCxq726GJ5FqCrC2joqJGwVUgmBlapLGYSIZ
	x1knnXwUF4w/WLZ0mY3oNxP8B1lphOTdSnrvzwqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648015585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RKyDOuUVaSAOlE4HqBTl74UEHBJPqo6EnmY5E1wz67k=;
	b=EHOJIkcIiAsJcb0vWbUSgSwLi3puOfKksK+xY4Kz3MLFu5gwLyhFmSRHGMToHVA8
	wxMI10fJ/DAMLlbRn6ZO6hG8ZAHjLFNHelngz74HuxidayRNaGvvTL2fhZNlObHzd++
	GU/AeaSU5KKckuaG8Y6OGptILFhDU59aH1kjWWrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5622e0f-fa2e2f06-fbe9-4370-b687-c708b648d395-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5aca46952ed9e5fb7512039f736e563a91f32e69a86020f738b8dafff1abc33
Date: Wed, 23 Mar 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648015584
