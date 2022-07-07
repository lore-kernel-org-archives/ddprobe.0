Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD82368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 00:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657154212;
	h=To:Subject:From:Message-Id:Date;
	bh=5vcVn8y4ngxnzLvOfVit4w2Gk9xesv2ElloJaXSaCEw=;
	b=Z9ZPHw3A73QQuPw0WIxQ3slrXgU9c4KUxgj4kzupvP8c9rQmXCyVZFYqMx8rGk2K
	ybsTQF3Lxv8rn6D7WNBSFx5YJ81hvCP5syiYt1Tof8jCOfrR/T4xgMlfOU8LzZtYCvx
	AWpYh7hOjzGIxskS1YiWlLe9IhpCKdMyD6if0GEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657154212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5vcVn8y4ngxnzLvOfVit4w2Gk9xesv2ElloJaXSaCEw=;
	b=R/En/szz2WLrlgffo2WPzSjqBGMBijapfH23Rg2eH12OgmxR0JKCXqrICx9ZtiJn
	us6Oidn/PdLXl3yL+pcpGWnhP8XqQoucHk48l7eXSpxeDsGICFKeQsUkEyLn2fPSEaf
	5cdyKb1tJPV8gU551RTs8xJiaFjWwTzOz/+TgpdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d61691a3-56592a61-3398-43c9-8c24-d510334e952c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc963932f38451aa06a303b392f3a3ab304d3230c056ee4ad48ee868e87c6822
Date: Thu, 7 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657154212
