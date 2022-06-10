Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1776C2F2C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 18:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654885079;
	h=To:Subject:From:Message-Id:Date;
	bh=Qcy7iE/x4nqMRhi+HwEyakaO292H3NGwfXzw9G901zo=;
	b=kaDL1KfjDPGBcUrPFZq33DFkl/A/cv/hsn8rSrDtLQ4ZrmMdR78d5C6NUrxAg/2y
	NEKHJ6RC4cIpcTrqUnaE6udgRaPkjW8obEg/ZOfMrjfgMZlDf+aTB3XfGhcfXz0WNA0
	4hAd7apP0majoHL6fdQaHSmfPsX3Qtx6Uc/SqW80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654885079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qcy7iE/x4nqMRhi+HwEyakaO292H3NGwfXzw9G901zo=;
	b=E/kyUWyKugC4DPVNZNQt3TbVqs2+6QfSksIeVM9W8nXHNvtds333Dl6/04hYRsRv
	lgAHxokiheGkR8FqwGULS61KmY1gXSE3NxGz2AuxATx7uN2MVQPGivUN2P98EwtT0m1
	2wlTwj22wwwAhuvsL2gx+b/bByMXVmlInTiXiY9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ed658cf-8f1a7992-6923-41e6-a2fe-8bf9aef6030c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aedb81a59192db17afb8fe391a45eaa158fa2a6604713df71574c6ea7cf5ed53
Date: Fri, 10 Jun 2022 18:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654885079
