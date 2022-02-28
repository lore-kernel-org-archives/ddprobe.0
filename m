Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9078E5398
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646042484;
	h=To:Subject:From:Message-Id:Date;
	bh=BlGG70QfOIm9nCpOWrRT8TOXAFa5HItjhgMqajTcCyg=;
	b=EsCh78OWA7EBdXbF/ZCusmRds7/hH0Ow275FDHA6s1v7Z8NM4ZSGv/+vcpPd/pK1
	G2jlR8Hi8u0YP1gCps0P1eTqUDVzCXY1ch+UYG1IkkSy5dUjHBSYcRnB5ZBCjuINfzK
	U7ALetANSuBOY1y+PAXgG3u2RzkxJG+x6wYVxh8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646042484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BlGG70QfOIm9nCpOWrRT8TOXAFa5HItjhgMqajTcCyg=;
	b=TWqdhUscWrDzuQqSeuOZxm1j79MspT2bODKQ0nSnhnpXXgzLgPVElYahO414JOO3
	2BxDjOk0MSfMzHgzBDkhaz40CrAc1SBhdrcLhZ4U3L3m1aObhSGAdqzaDSJwJfvSHQf
	prZdjBI2uBDNbABk8GrnF4XdAOwH6VXyyvmC4uGY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3fc70fdf-4cd449b7-48d3-4bd1-8147-529cca97f1eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bca0770d26103aab517b5a47f2073284907e6c4110251b38ef26da80c8fb3ca4
Date: Mon, 28 Feb 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646042484
