Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E82A7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661316652;
	h=To:Subject:From:Message-Id:Date;
	bh=uOAIqm3eneldGLclH3v6gFOHRrzuhA9IRZgHxQfpOLU=;
	b=kF/gNVH1YP6OGAI663IAP3lpfv9FujA+7UoCksYRV7LoQvE8luw4b7MUb0LiWMrp
	faxAlP5ajRHiqedx72MBu/H/3+1rKaps8+KfAoUyd8kHY0iqpaDS0IAWDAs03IQNjaY
	L12RtkgaDs3HSJFczNM3zqXPz9wXLAr573O+xoBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661316652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uOAIqm3eneldGLclH3v6gFOHRrzuhA9IRZgHxQfpOLU=;
	b=JepcVd5uSBSp57c/hPFhbT4dBNrK7d80PtQfVe+8PxJnEAHG084WLC+TJWUUkw9B
	mi3Fn7Va4KRvp2O7HjT1xwHAMbQL1/DAvQcB4ZSkK2mx2Ij+vzWyYinbTa29WXCx4cM
	CENSM3DM9o4AgqwWsmD7bHYIWwX1DM4OgOFxZJcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce305e1f-c9853de4-b817-4ee4-9fdb-d7a63eb60e89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e981e6adb38db944247bf6858e901d1768d3fe7840524f159e570669d41561de
Date: Wed, 24 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661316652
