Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEB87C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646834785;
	h=To:Subject:From:Message-Id:Date;
	bh=C3Z67lofNNpukZKbJkrvP1JBQC5oSPC3s9TB66YLJmE=;
	b=YQjz98iR3SNVfyLQCpOlx0ns9uVlrIbjHoyoj1rTdYH8B8sW2kKAdpMKT8Vyubqq
	1mdhiBpEEIMkc6BkBvXhG/b3TqgIMKDq3bjQlUHjNLRSQcuSPwGe15gtK5KrzHb6Mpp
	2TZQPdCg2+rBhMHYcLexVu6a+luaG6OnwmyJ9250=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646834785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C3Z67lofNNpukZKbJkrvP1JBQC5oSPC3s9TB66YLJmE=;
	b=k0PZplfCHULmrgriMZh7gOORGG//XHrLDK7//v8js2KuqRD59l1cRTZ4mTIV+nmv
	hSPZEa1MO8oAYqoDdd0ABSRb7ChUeMy3C+lJ9eSTmGfn62z80W1e32+evT1/x5/VbR3
	AjsTrndPEX1w+3Xwe8PLqsZhJf03WH7kmujGG3DY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f0099f9-e06c061e-0ff5-4ea7-bf7f-457f99e98d6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2d44d9d728b058afea2b25473ac4c736d8c51f2822048dc1b592ba42514181e
Date: Wed, 9 Mar 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646834784
