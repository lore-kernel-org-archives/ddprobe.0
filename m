Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE63369
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647081984;
	h=To:Subject:From:Message-Id:Date;
	bh=q9Yh/g6jkngIiDlKJ/+OYFVHs/s7IHX/UFOse4WLuos=;
	b=fKrxzf13OCIkf9XfMOr6O9UDfPvkhSk/kUUgTJ1/TL1c2uSclgfhc0mYmpVvuBKk
	u9wCVRAvWJ4Q5t4uPYQfBMM7QHVJ29t2V3G/K1z8TMLiTH6a7RRyVZ8X0Oqw7YKHrGk
	1/3O6GE5u5pZTJfZOrkrB3Gq1DxyYDGQ9dgc9Gj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647081984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q9Yh/g6jkngIiDlKJ/+OYFVHs/s7IHX/UFOse4WLuos=;
	b=dEndHa3UnyOLJOtXbkn2vebk16Ml8eqN3ekLtOCgaCd9ukf1MA9cWNAq2zr47dLH
	fxxbkkf98x1CT207wGsMedqFxtE2dV9hrhZoJ7ev5oXxDBujsbzZKUq2WBbUgErAx1k
	Zx3+PkVWYGLrkFU3RCg09aOwWL67gQl0KvO0d2cU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7dbc930e-3de67b20-5a55-4f79-bed5-7b25090a7d60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bb603389581247f1f7ced0ae7ccb5d0da55531ee682c29a1b22d283e9ecea18
Date: Sat, 12 Mar 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647081984
