Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1F97B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 10:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652179379;
	h=To:Subject:From:Message-Id:Date;
	bh=wSJ60gbHH9PakYlFgq6xXgUR8HN1qTdbz8bYOMDhRBE=;
	b=P6W1nTarF0B8PCiDc8jUBECxuf5pleaYaEJ4h5JZpQ1dB7tmlNTTmYVHdso8IbJL
	4QYxaKJCEaXF6a2L2Q6xYv8LPjzoN8PoKvMt7QRVW0WNytNkP0jDsefVnYQgEKbLWLb
	LiXJ7cNlGcXsg/NdzKCDOSP5iCp+gLp0IXz5hB5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652179379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wSJ60gbHH9PakYlFgq6xXgUR8HN1qTdbz8bYOMDhRBE=;
	b=Edo/claqYXUSQ47XeyPk1tIS50zAFrijzg6x3RS28kn4Xl8O3jHLxSuAM68S7uet
	wIAwDh1pRas4BLJKpdO9iEd9SY31PL8UohKn5ddkIGf5XvYe1a9IwKBUW+ZivgS9ZLr
	/ew8V2nMCwINp5I5pgpuyyJcQzTn2s4KeSHSssrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad90a46a-0753b0a8-063a-4afc-91a7-f76b3fd2d334-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9f577ea0e7675e0a2fa8b48cca729ce1ab7c6d692216218bd9c66386c531e66
Date: Tue, 10 May 2022 10:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652179379
