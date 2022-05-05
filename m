Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B8C632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 13:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651755958;
	h=To:Subject:From:Message-Id:Date;
	bh=S6OpdqyYBK1DKZ+uCFP9gFM6UJEFCWX9qWLkHa8jX8M=;
	b=X3WAulc4VI4NJC9YjaPQV1Z6Nlq4/om5cLdRmiMOGQWvyApz0+p0NHaWB62mQlsB
	u5OU43tIT/hGBVrgwLO4wjrcG2KF6HOfUr64SLrsceQnV/if2Z0AJjiYgct/llDBVHG
	ZUoTXqP4eyy4jO4Fyl2aEJ0j9FVRJ/SqF/tq9oWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651755958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S6OpdqyYBK1DKZ+uCFP9gFM6UJEFCWX9qWLkHa8jX8M=;
	b=ZK6yM8niH8p+1QrEbCuoZx89uBi2MlqD6N/lxMiLeCIZKKGq8MQ4pfFDMxe9lKV1
	Pr83L0SgJVtm3ZkjWhww5g4f7I4O+FovZNfrFZ5o6bUIz0XH+aeDfGohpqAsSLtu62s
	aAphbYCKGEkQX85cKscbozvbVJhNKrPhva/lziow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809453bfc5-37283f51-b422-4a4c-b86c-68ad5f00601b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3d09c58d737fb838e056342e4a9e781573f3b562f9714d962582b994eb5e31e
Date: Thu, 5 May 2022 13:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651755958
