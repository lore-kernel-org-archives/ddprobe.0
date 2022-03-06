Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C127C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646607084;
	h=To:Subject:From:Message-Id:Date;
	bh=pkNzZC6zKVdEQtB3Fcegk6utpzxQl1la3oT0Flyzd4U=;
	b=V0cQNBu+Ut+K+L3pRABL/dKzCHaIqoZa1CpaaiE7aUiqtia+XtDZ2iS90DjI9MOV
	ITtbMZJXGPB6Bnfsg+xLV+jQvpLsfdJiPLwskL2CyHGAh8EIn2m/o60i+ftPA/9iXY1
	rz8sLb02JNu2m1uXvryFHE9JVYGRPn9NYzAh8eqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646607084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pkNzZC6zKVdEQtB3Fcegk6utpzxQl1la3oT0Flyzd4U=;
	b=Im5wZlJ6azdsHYpkUHHsbsvKZy1QqW5/QU61V7BU0DK09Mgvq5WX2BFjCmOPR+qS
	6FUGESRUeUpHgpExuGApp2JCQnFqxeewnimIN82z1GRsNHaH9Gc8HyMvwldo0LHp5MJ
	JIuCMdrkZdaU5bp5mnKdIvLi3PeteYX7yPgL2NO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f616e2caa-35bb1db1-3c33-409f-8c6a-f65313d21fc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 685aad1e72c412b6d9734b80dda3b660a8623b51cf4bd1f15c9ee41ab4fe8bcf
Date: Sun, 6 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646607084
