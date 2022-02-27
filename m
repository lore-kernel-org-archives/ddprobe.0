Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4567B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646002884;
	h=To:Subject:From:Message-Id:Date;
	bh=SQYXj23eIYsnYMCyiwC+aCD03KY9uZnrXC0g7174NfU=;
	b=Hv5eioEK7lfN5Sig6loFZB9DTzY2HMc/pwEItiSKFq5uqEdx+pX+m3fCWGnkPmPh
	W24xqAEAPxwxxzyt9Rft+ZV4HIEdlzHQ4qYIvDQhByFErJBC59DhkHoeaISjhG5Vevg
	FfKC33l2xBesUS6mU3eEJElHBwTXOzVVeP8I8WOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646002884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SQYXj23eIYsnYMCyiwC+aCD03KY9uZnrXC0g7174NfU=;
	b=IYKfI67CJWa0doPDQmXuvhI+zNN4nq976r0SWKCNOTjP+fYUP793RhuqdTK/5M6M
	e6BEBQp25ABbqm6OMNBPWP3iadpaosNTN1vA5/2H3Pw9jTzTdKqQQUCVXC8EhobCj5F
	IGhKBI7fJIMPqWnTOfRL+7Fd+AAssWOYCEyg6KrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d6ad091-483544b6-00d6-4d04-80d3-36ec00afb373-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c0c9e0e70da65cd3d06f697a212fdd86b1d95dc5c216441e01686cff35152fa
Date: Sun, 27 Feb 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646002884
