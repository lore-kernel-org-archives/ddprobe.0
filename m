Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3215127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646863885;
	h=To:Subject:From:Message-Id:Date;
	bh=K7Vrp6kG4F3wf3RZyev1GVajFRInyOpgy4+rlqys8aA=;
	b=apL160GmQSNmCnAGQ06P3Rx3iqBPT73/ptKtYMRT/mc9FLvAeYbRyl8uu1cLWaQe
	AirnPWaObYOYmZxjHd9ac6u/2ZVHkdUQmsSKSSaxPcbqjBIQH/glTx7RC0vNr/u3bae
	T+comtVzP51/xU46EWZ+bvOu3l0uy+Fkwd0DCR0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646863885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K7Vrp6kG4F3wf3RZyev1GVajFRInyOpgy4+rlqys8aA=;
	b=KIBco9t2azQuLZOE1dKum99RbeW5jvlY/sK9TTnkXwSNH2WS+EeGwJyYw84bc3WL
	mzLkJBToYv9Qe2cJU8in1+5TiwrQQ72REWfT6MCBtTSEenZe/aRmqo61k/YIkBlwvW9
	h8rKxBsJmOjYFAmBXYhHCfKaE8HVDItZ2yASjwXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70bca214-dc78edef-2e65-4c96-a91b-341bb64c0372-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c76f5f909e9962b86fac34dfc86c98b9bf42ecfd062383afa09cbb49a38d86d
Date: Wed, 9 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646863884
