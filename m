Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8EE4C9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646022084;
	h=To:Subject:From:Message-Id:Date;
	bh=FRoJaZ2VOZvpOd46A27m4atPomjdtfye68gHVI5lvtA=;
	b=IVctxf9bVKBOt8PmG+Rotmr6BZ3+dzkwmv00mb2RlQnj62kfygdGUOedPMACofaY
	v+wkhSsOSVtBE0Uhik06YZbvy0RYJ7smNx9TO52cJwmcz3V5R5OYMVz5+d8qZLGiTM3
	H9Dt/OYViYmd25c8IfFGrtfWJ/yKB/4eabqChF2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646022084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FRoJaZ2VOZvpOd46A27m4atPomjdtfye68gHVI5lvtA=;
	b=bjQAO6nUQHUZKlzSeGsf8M+TgCnGQKCvVGMFXU446HnMExX64SEqQe5hxuV+ojCR
	7KsSRiQNZB6ofqZyBPyJyPpv+ilO0QfP145unZUQFtyrMHrOCujSn9wqW+DkPbRJVRn
	/vZEihoae4F7bU1Pi1FohbNZ8IxgNt/+ldACGN5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e8fc897-86cff6e1-fcf2-4617-863d-bc5ae0bc5b23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3f53a577a1736f03f1ad5a02d9a4a540df9408714f654f97ad682ec974dc3ab
Date: Mon, 28 Feb 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646022084
