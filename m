Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1030158E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644947784;
	h=To:Subject:From:Message-Id:Date;
	bh=H2k60KX9pGEyUZbn2aOBixZ52l5gklZfLeV5mJYpf7A=;
	b=K2tgMOJqgbcx6LS1wasbu2pkU+BwYwd5PMpv82Z5LzGsX+h3F3RIzBu5NBD7QQUJ
	+bsbVc5vvqhVZb8UZNx2kmD++31u4oIXf2U3UFgBxmTLb67TAjfo0dKZtOYe2vAz5LY
	R29bNXkpqTB8QXL8At+saVNIoGxRH+g1nbfTVp5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644947784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H2k60KX9pGEyUZbn2aOBixZ52l5gklZfLeV5mJYpf7A=;
	b=l48cvPZ1O2CjgfWTXA2abQpW0lO4oqfssQJyIr+aAyDuXyMg6J6u9R3fgh6jZRVm
	bsyfQk31kXLXd9GZKH9KJE9AA9tFxy+kIssg0wuXQVTPkJlKdfwj/jUAhvhDzS0LXwT
	RLASzix+ZPWhK1U89nFkLgRs+F99Ph1toblz5YqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe874429-49495969-c3cd-4b08-b0b9-ba9336a3f04f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbaf8b188a3cd428d810658836d4e96530973494a163e08a26aad96ab854b5da
Date: Tue, 15 Feb 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644947784
