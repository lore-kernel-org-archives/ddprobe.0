Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A675A7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659050452;
	h=To:Subject:From:Message-Id:Date;
	bh=cNTBYyxBItmkuhB2dqOBgdkC1Rwe3zhUptzi3FcYE5Y=;
	b=B4tiy4Ke851V9YSghjW7wnQQUWJopuEdh0lOCi9pPu2HnwGQwayVVqGh9spVTq+8
	3YwnD4DYGjF+uvE6BbjsAeaJ81Azhv2wJHX1ylsKYDOSWPIG2+4mzCyWOLQzdN0m8uE
	m1LS3jFn3Ffc5xgJf783RIDe+S+UrkCYli0eRzpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659050452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cNTBYyxBItmkuhB2dqOBgdkC1Rwe3zhUptzi3FcYE5Y=;
	b=DLlq7zJilwMMlkFwX0R0MpgrvFb6t7+4/ef+SNo3MVJ6s0dmNTMclXnE8Png6E63
	Cg9HOcu4vdel/ZAb1rUyYyT7S+wABF0LQbE2Ka/RnBcNitVbwh+Rj98aJHc98uG8/U8
	Z5/gnKq9++zU3PvDraF1VKsJZc2tBnZSshuryNAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182471ce69c-942fb067-3759-4ff4-9cbe-6f95b1415578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed4baf0dd0084c0a12fb1bc8b25c8ee24528b318c9eb41e172333b1a758d95de
Date: Thu, 28 Jul 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659050452
