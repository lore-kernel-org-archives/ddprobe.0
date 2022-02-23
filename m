Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDADA7B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645606585;
	h=To:Subject:From:Message-Id:Date;
	bh=AMpWmmy8VnGz85WuL5Ae7ocqonD5J94nh/u+nv+2DJs=;
	b=O+Ti+ktduQ9iBjn4WL0IVf8r0a5LwiKXrF6h8i1OXeKDp5CRUUvfvTwB+nqwRvIm
	4PPE4Ou3G12XNqf7C3gaYHuk3GTI3/sHQ1sIJ4Pz4IIDwb+gUUYHWetrNtZjtY64r3j
	JAHl7Ta96SAegOGLHeQ1gCBr5vuY4SZDIhzZ7U7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645606585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AMpWmmy8VnGz85WuL5Ae7ocqonD5J94nh/u+nv+2DJs=;
	b=C8gojkEBjKF1gzWa1VZtIKEnEq0a3YywPtZnZAQLAYbuTDO9fyvulkI1x5eD42Ku
	p5jS4PeBBNA0C0HBznLw5kRVgxd95TGujLsQyLkR0oFHJOAtWlZSPmAvGZhW3OVTlQO
	6tkj34O6Tqg5iqHlN9UneSVrDZkIh7BqzcHYcSMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25cbc1f8-d538166a-de14-4302-8621-6b7cea8e9aad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 621200d7391aa20948dc078f694354825ebecfef04fd31d9b431ac6288f35baf
Date: Wed, 23 Feb 2022 08:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645606584
