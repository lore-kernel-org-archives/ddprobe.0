Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7626AC2
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647386784;
	h=To:Subject:From:Message-Id:Date;
	bh=jnvzD7YDuHJAR3GRHBihmQ0US+lU66bowMj63LnmAPg=;
	b=Ioooad7QYrCII33FHn/yDujCU+xnSVGFKC4hz2iAvAtVbMftc+xG4BVWqnYPyv7Z
	8l8+hd1vi+B7TesYC/tLyzVZTsPP49lM4CtvyFuHJ7NNsy7qHbLIdIvZxiRi9hTrgNT
	B+1kgiQC9TyEWh0RCsGZZnNHMkotQaEZmYlmENNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647386784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jnvzD7YDuHJAR3GRHBihmQ0US+lU66bowMj63LnmAPg=;
	b=PUWcpr93T+ueQWqnllFNXtYxoBiVvw4VXooMLsDhxVLZ+T4fGYa2F1whuPrkj+bc
	+0XT8zGbfW6jea4HXPo5JUzj9CUMH4NEQMzXjPBB8E5mSyqIMs10tF92Zlqo8Rm94/K
	JRO9EZ8VfUJUnqXAhTdFTy+1V76xFktv2JmWu19k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8fe77439-f04a00be-575a-4ce9-aab8-de542b772450-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df28a667705cc53fb98a6b474abcc08c30a171a7acd9966541abdd71758e6dba
Date: Tue, 15 Mar 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647386784
