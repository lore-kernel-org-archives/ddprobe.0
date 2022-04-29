Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271797B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 13:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651239298;
	h=To:Subject:From:Message-Id:Date;
	bh=iM0bRTuyWpOBG6UHGJC2+TZLqQ4wSOeOCQ5eSh+cEQQ=;
	b=dy5XcKVokRfRHblXAwnWOcY/U8CxAffWEHalWOpdziLm7WfOf5HY42SexgyQ2er5
	U3qBkxfPHVh7IMZkVWJu/LJDMv757kM/E+LQ6WetZ6p/LD3/juLKIuSGhuShbuO1XUq
	BkUYngEIx71qey6DpgBGbsYkHZO7w4b/QLt+LeWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651239298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iM0bRTuyWpOBG6UHGJC2+TZLqQ4wSOeOCQ5eSh+cEQQ=;
	b=BkkLJ4f4qq1F907385syFe5Q+ieIjztnBO0ahZSc6a9UuuiCcmv8UqjoJj/yPim4
	0UUCV4yOMdWjbeI7GuviuKo6NjXmY5yua1WPU2d7xHC61zH19+HfzQSQEXA/2rua8Pl
	wY3SSu4FKbXTl23w8ZEErQIUng5ZerTQiaOhU45w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180758824c2-e5f7f7dd-3ab1-4b1c-b835-499d9c37e9b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dc0e20d2682f5b4f31f659fd0d85db0176f13330d91f6f5318bc032fa8b70cc
Date: Fri, 29 Apr 2022 13:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651239298
