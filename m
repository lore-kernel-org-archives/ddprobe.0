Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDA37A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647997284;
	h=To:Subject:From:Message-Id:Date;
	bh=4QHFAVeFlBYaXloeLZ77Xm3+mhvRNLupydOWHtCLsuw=;
	b=e/u/UMb3NbNIhB/glslFqU2zVia1gxyNwXmaaWQPhr1+e98vo8tAIeq8YVl+H+B2
	LMWswuGcFyKp4XhTswN2eKL5iNNjRkX6g5UDqIBZ/2VzJJWBYUgtDOrLMGKirc97uNS
	qtt0bWAqK0KDK+Z3bciHvBBJJkpG/ZeWJx3MQi28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647997284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4QHFAVeFlBYaXloeLZ77Xm3+mhvRNLupydOWHtCLsuw=;
	b=UQzcQ/rm4iNQBahFJkxzh8+EPqukDv2q3zSP7ux+MQTsbRHQ+DCIiiR2Ai5hOwix
	S+G5imMwcgiSY3jEOXiHQ0BaDpM1kDbkBgVXKGwlxFLBD2X8ihsTA8ADcgIMr5D9USZ
	GnwuD9FX69+qI9/e8S6GlLdgJM2c9hMOvmSvgjKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb44af184-fbb97272-5ef5-4cd0-904d-00de7ff2c9f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23ddace4410a100134b16313eb9e3bbc3f917f67cee9611a0843054bc4236e0f
Date: Wed, 23 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647997284
