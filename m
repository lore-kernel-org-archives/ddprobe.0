Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37991FC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645040185;
	h=To:Subject:From:Message-Id:Date;
	bh=eyLsUaZmGAWX5Albm3gEATioSbvSNQjaYbBWBo8UCmk=;
	b=H3EFvURPWEBHGh9svL++FS7XDhwNeWjfKyCsbXK2D/v4FmQuVh78IOYzREMSzEXb
	TxoYRWVDL4m8pmx3jkNtE4evkLAz1UbL59DQv4qDShfd2m4yXHz+mZ0DlL17OPJ4I2d
	IJgPQXg6MjvbJoxvk/KR8s6oCBKLtGuQZCt+uRJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645040185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eyLsUaZmGAWX5Albm3gEATioSbvSNQjaYbBWBo8UCmk=;
	b=Mth1tjLidj2LF3rVG1kG/K26zySNMlj2X5r3EtvXJ6HrM2GHik1k773KW6uwdWHD
	roz9VUIleikS2kF+JXUnwvopqzhTkYTEvNKlvH0bdN6Eecj3Mncwww98KVdI4jVbYoy
	pOm4J2DHzoKTCapSZNf/qTbt2TubLlRu6+OZpKz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04092e4a-7894567c-6adf-4431-aa31-e3ab21a80164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2f87b40c7de66d0376394d64a44de618da17c456f6bef0b2aba763836229c38
Date: Wed, 16 Feb 2022 19:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645040184
