Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1DD62C
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659519053;
	h=To:Subject:From:Message-Id:Date;
	bh=+mHRpUcKop/4XpNmSa1Sfrad/pfVuQ8Mu11ZRODPnN8=;
	b=VvXoCrdJT6Fm5HM/3ogVwsIv7O9oyS8KxoR6HChq/oYcKkav/wAEk/Z5wJGOQNDN
	5hXTOJO2KCAr6DV6RRyOGsOgL2MeUgBYj/v4xR8uEF04rP04INPQOZvE1XBVqu9SDiX
	tk1mpg+vxWtxTh13uaimLHFH8Y7BSMLI6WGyFsEg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659519053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+mHRpUcKop/4XpNmSa1Sfrad/pfVuQ8Mu11ZRODPnN8=;
	b=J6AmVuVt5I+DPMMCpkVJ6UPzJaOrrSVBguMud0ThndQMk4t5AZWjhGBL/ezVlhjo
	YtjugJT/WEwdQiSgjLzyqGabjD4vz19LHu9g4c6Xgq+nvmYiAVKi/LOogeS36O9k5p1
	Zd/H7v8MXpgIjBpyJwsIuKr8aF14MJC79Bxg1T9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182630b2b3c-7e4b0149-88ca-4517-b274-83efbba31256-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dc9c4c2e1defc3d9b16a8e3e4687228ea1d3bf2d81fd7cf285bea412bc11ad1
Date: Wed, 3 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659519052
