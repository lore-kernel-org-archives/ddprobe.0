Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998E22F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647479784;
	h=To:Subject:From:Message-Id:Date;
	bh=s6fksMoomp/bKtnGBsKb1kX7eoBbaoYnVSAcsE8qQuU=;
	b=f+uIjfeN2T5PGPNJLo2Y2Pk8NC0m28GFQ8+lHR7DOvRdxAiKl2Fnlw8gRejCSxFZ
	aJXxUM43C6eTCqQ5lwbceWBmkjGQnxXI2tY/oYV7AmpmQVwA+e5uVgpUPMtg+z6V5er
	oLNt/htBqeVkwEW52Z14uZ8nZEQZSqlj/pGiLAZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647479784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s6fksMoomp/bKtnGBsKb1kX7eoBbaoYnVSAcsE8qQuU=;
	b=arGvL9Kj6a/+r7EMA6B7/MHgXxn7d0tzyr/wQV4V9FxxsiMFWfyzD+hY3heV0FXO
	/IIA2NRI4mn2mcYavEN1TbTBfdtM3y7YONaGB+ggBiIISWrMR0+aKWrfEKKlhNAZj4m
	xesNqyrShXO7p9BEFv8k0NPnnJY2TMeWeWDdN6BE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95728539-dead9785-0833-491d-a53e-5aff0e5c9ee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0940d39b66abcee918456690a78969f9a156aa05251e0f4f0fb036c8caed054a
Date: Thu, 17 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647479784
