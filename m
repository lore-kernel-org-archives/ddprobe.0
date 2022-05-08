Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3659B1879
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 21:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652044738;
	h=To:Subject:From:Message-Id:Date;
	bh=FT8aIkBE1VSLtwVZUwY0zy/ee55gIyMYkeiK9w37hSE=;
	b=E5TLhT7yJvbws/JbKilbaHByB3LR8KjXA04FYFCjWg9HoYB11yJCKkrXNhSMFcRa
	j+jWmuK/OAQdHqbUAxvQ2IETbqjt8FYxcUkY7ao7VHFjg94+XF5b27PFdpHMBbYUjE5
	KQi69SQoPBJQPLyxx0H0oTGs84CbZIZt8IshcMoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652044738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FT8aIkBE1VSLtwVZUwY0zy/ee55gIyMYkeiK9w37hSE=;
	b=JaujTivOHr0hsIIxw+LiRHRbc2512c06TLFefEvlG0/ZqYqjLX/z/Pu0wp5MYdND
	a7ULMHTLHp+i8MfwCdTN3KS6jVJqUAot0PoOkdPTR7zwMIXfw4Io07SiBtJj7udPO+p
	ZvZ07loFhqgUxynzzDMSGCfZZ0i6VvzOjreedxbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a58a2f14-18956f0a-2e1d-4dcb-ad6d-fa76095b8808-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a8b0f4116eb25cf4db11d06bbcb0f06ea4e1b4bd9bd336193ce0f1b0c5c82f2
Date: Sun, 8 May 2022 21:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652044738
