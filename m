Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3798BA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867169;
	h=To:Subject:From:Message-Id:Date;
	bh=rUM/1y+C0LvyX2Cnj63019Kcbnu2/YFA7//Bl7UeeJM=;
	b=lWBqhLIvNVHGA3aQTAQgIMQwvrueJM71H8iWhQN2QnpuU0kIm+0H41VvL0sCKYcV
	JQZE02H7nXCacIFiCx1KFry8D3DFzM+9C3dta6GE1GkaH8fJTkbknpqe7jR8CHYUoeV
	zCX1fQPe2cAiI5KFBmO+gGwygz7HOW9gnlsCGd1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867169;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rUM/1y+C0LvyX2Cnj63019Kcbnu2/YFA7//Bl7UeeJM=;
	b=UAc4eUegN0WrycgSVIDJd54XyfGRH7N5R3cEGuZwV0MVPGFCqPtmzz73kNAm7h87
	BAa99XthfSsWRIwYb0lHtTwXFnN/FANquKBBXrBjZEp7pfaB3cyLWSmWYxG6ql9B8S0
	Iyr5WCgqWv8hd7S0PYBASoHPOWH9vLFEJUaUmckk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b92dac-726b83e5-7b02-48f6-9d17-66657c92347a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92a0035891036f652d28af9a3585ca96f7043343e53c94f5f88fa773fde3ce54
Date: Mon, 14 Feb 2022 19:32:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867169
