Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BAB27E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645569985;
	h=To:Subject:From:Message-Id:Date;
	bh=0EZ0oOP8IQj0zacxhtTtfsuFimfi5IsuROIgJTHYUaI=;
	b=Cgshlm7Si5t6i6j+HfvyK2pLZnI7NgLahiVlr8KpE6T+tD7WIKIgvsPnwJ968Rmh
	zVEIghpAVmK41gCxtNAKhbytCSnH27XLBcdB+GtUuwgSKosfVz2gMtpwd3sSNMFziIR
	WqkV3OZLZ3iMwHBE+e0r19Hlpz7VZ0/PKYqQHhos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645569985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0EZ0oOP8IQj0zacxhtTtfsuFimfi5IsuROIgJTHYUaI=;
	b=VXGTRpTQd/oH6GStTxhWpl1MEyH+tzy7JO9qT+/I2rKhGDzZIY5iT2lM+MjpveNR
	OrbHn+RbNNlGnSkT4FgLrrChYcDs/jmAHlBn3Ayk8lBOR61jg/1VN/UVIVSny39moZ8
	1O1RhpSu4IvYbFccaYMsOoYAPi74tqmb5qCu6xgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f239d490b-b30444c8-ad23-42dd-b519-9b94b8184a82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f633bd16e943c9c2b4a34876b5f41eb9bbc72e63b0a03e515dc019cfa0545e37
Date: Tue, 22 Feb 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645569984
