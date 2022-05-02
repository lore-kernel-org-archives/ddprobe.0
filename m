Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325CA17D3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 10:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651487879;
	h=To:Subject:From:Message-Id:Date;
	bh=9KzrPi+Pb2X5ZtC4p+Z4/2jPbfk1kC03tJn1xuPm7Jo=;
	b=LOPJr8u6ggCgXtttDASRFHecRk4O/DCszeU6P8tiYxpJEFsIg6swAKMUp7r6cy9m
	J2UqgUKOzdloI2hK2aNpHXR/bU8ipKaqV4edqGIZyNn/S9UcqCSecC00QYhtn7/WI4F
	ZLoIEcnHfkn8W3cDesRAeEyucytIGS7lvF8NlcvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651487879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9KzrPi+Pb2X5ZtC4p+Z4/2jPbfk1kC03tJn1xuPm7Jo=;
	b=B9IgAaNkobpGc7+ejvVdpzoXuhYCzhiIyP/m9WdVSLATPKy2qk2NBQD/D3046pzi
	EatA58VO1U5gy2MvxWHsolMi1A0LLHRTIL4UkL4+pj9BZv8G7gcBgq85XNfevbmu9mZ
	RWQ5vXd0BaSYqm8ddcbuqIE8RMijT61PRqmNyPdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084592c63-7b7650b0-dacf-4ef7-af7d-2c8241bd5cae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ab1a6ccbb0e8ee68e8f069d6a14e41f5d10ec5d7c63b0edcc03a91eecae27e0
Date: Mon, 2 May 2022 10:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651487878
