Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE54A2D
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657337812;
	h=To:Subject:From:Message-Id:Date;
	bh=RnBzFOSgP+LktPrMIyEMBeJj87/nPpAYbR0FTe2wd78=;
	b=BHoPZFJedF2GZ3veVWi5LgwzY/H6xjO7/JPTMpCEhWDCXO0MZgaJvRCd3FWsuu4U
	i8b/ojERkpbizKkr3D3bYeJVCYxeENOTZEByhpDDz8hG2NXFGx7bwAez2YLPp1FjtKJ
	BknhJICYuVgln4MWo7+500X/47tZt2MKsA9jSDC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657337812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RnBzFOSgP+LktPrMIyEMBeJj87/nPpAYbR0FTe2wd78=;
	b=NSwi4M9qjZ9+3dwJob9/29N2qsdbZMXlzpYxt9hCytlTtb3B2aPycNuusPd9fS39
	yXwmRBq5RgZSFjZVyP/klrmxhYDmsC1iev9Z3giwSZAZRt7q3dgOSfi91dl8ZsACJll
	3P1f2/4Xsie0JZvInAa9+aS3CQB9sLXYxqLUu+B8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1081535-b0fbdbd4-d97d-4f1a-8e7a-4f6a46fdee72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88b01cc4f09ef139eb9e3a3cb60a3d9282932e61a2027ac23d4faf7ddc863d31
Date: Sat, 9 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657337812
