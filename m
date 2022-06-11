Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED2F7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 00:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654908359;
	h=To:Subject:From:Message-Id:Date;
	bh=UwT9NIoxWlWkS8IImdrtVc2l3hpjCndtB9hDxZuRMM4=;
	b=HaJoaudBJZXbGwVhTPWrAChtvCCqrs2Tiy7YVGLvNruSnBqsnFbYTCC42c/0ds0E
	wYPLIIFMigVQN6lg2R7zDSKwwgoIBQvF/qxhc8/mbUa0zrsGmcTT7VDMgsYlNgIOzsP
	Bk6NXw4GB2OgNIaOayjvAlE9BGNK50oQ9f6DrvXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654908359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UwT9NIoxWlWkS8IImdrtVc2l3hpjCndtB9hDxZuRMM4=;
	b=LntPIvp38JoEXd5tFhbBCwEl2hifLtx9D2WPZ/iMN/1tWF62fmAkzLAe6axaOMrO
	DmQ9frfX1vlB9rMSXmiBX9J5JCm8WeX5DhLbIX6Wpl475sq1ume69WldzrgxRJlXT9w
	YN/XxsYvnbo4MjzJfIemawc4tfpWpJrqupzbLLbI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181503992c2-cf0ddc8d-2220-4139-a7d9-b7aa521eaf6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2e9111d7e47221983b36c59f1418c79382763f27c25f3ffc42f4d5a7232dea2
Date: Sat, 11 Jun 2022 00:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654908359
