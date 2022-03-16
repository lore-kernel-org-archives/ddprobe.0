Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969633B23
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647453384;
	h=To:Subject:From:Message-Id:Date;
	bh=llmMLEmqL1z5mxkdZNOhBFlU3anaRSjgieaAfuqJTm0=;
	b=hn5DMzkptVSz1Kevjq2dYW+lrSk7FeHdV8W3kd0CUfVINUmg4Q+jXhb5hxkkDLjx
	bhsnYp+QnybXZWzSp0QyXrU7B63Z1EvA/Uh35UBsWGb5T6BT2Y8wrRXfXxWraGgx2jj
	osmYcjx1juBnDLKdQ8bm5CK93kB86ok3HRTjW6i4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647453384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=llmMLEmqL1z5mxkdZNOhBFlU3anaRSjgieaAfuqJTm0=;
	b=b1CAvXH0qNON6q8RtzKiMxpbTG07DoYl1cdcsjiz2ti43XR11TIX9AJ/ZWHbQ/RH
	ftAPFmFWcUEbPGUs3nslSYgcAvCYgJFd4THh5HqL1D44kza6I3ok2hQe0BnevY3BGP+
	u9k+CsTljKzZ7izXfAo+zzyFZHLqpRu08lqAEADs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93dfb05a-3a175c12-68a3-4062-9e05-4f25edcdad1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 457e855910fa612317c96063684047633c46fb807cd554c24cb7b43f64b24dd1
Date: Wed, 16 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647453384
