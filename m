Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD1D17F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657861012;
	h=To:Subject:From:Message-Id:Date;
	bh=BU0TZNHSQYZGVvFMEDo1U6GAorZJgTus98X+X7w2Vao=;
	b=JKTaPVq1x1tZvh8r2rW5zPB6ldUaGbpPwaYf+wv9HitwDJyR7g2isWCS917tOv8W
	T6nmtZyVQDJFdCJWjVX/EaB5JnlmqZS/HFg5Czrcoxi2DkOHisZr8RDbkewyJKSPEKm
	bnWeMIzAZOBoLx/P4RvA/tpRgFhxCFBx6ZMx/KsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657861012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BU0TZNHSQYZGVvFMEDo1U6GAorZJgTus98X+X7w2Vao=;
	b=cz3y7X4TlySUmW0BDjBOweVWchyn5rTm2n7/v99YOOjikWH9iQz9DJRebDzoeYNk
	2aYxWc9ThnDf3KYYSPeB52Wv8N8+7rMgWwWFXpCg7z4MlOUCF1QQXma/D14983qGXQj
	ohkd1yG2Hc4nGX6YnBILI1JD+nGiZU5UPnyUTvf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200377b25-59b6d22f-e3b0-408c-84e9-acfb123a3252-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ef9e72ba7b707fb6fb6c233f67c124c67cc27749d2af46f5668bd9842a554b6
Date: Fri, 15 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657861012
