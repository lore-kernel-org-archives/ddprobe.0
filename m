Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6B919B
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 05:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653195659;
	h=To:Subject:From:Message-Id:Date;
	bh=Ri9ndwFAzi6BonHE2oocYKFGop7+RtfmoUpLqDd4aic=;
	b=Aov3geWLERwWANZazskOUVJJPxY+sWQnn1OzaWTEO7anHcAvlRpCHKnLEalpL7wj
	e5JIQxu2cguk3dIrZp7XGqSfk+e1ymxxOG+WgEEko1tLFBnV/AAH1jm5iELGERS0NZ3
	iwBWWWpEEBvKMQ9r3v9pTrpep3ZJdtNpD3XtZtac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653195659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ri9ndwFAzi6BonHE2oocYKFGop7+RtfmoUpLqDd4aic=;
	b=c7IjyPrjj2FVcTLc37zLmSuRMZLK/v1IIKcpeWjGokvemke1e5Csopjksy6g5EY/
	pLK08aJ6/kKU+ABTdTj/IJOgBkG7bUGUIaMr1189LVM4i3APbRc8AHFL58XvSkbtvbu
	0tPEv03GqTuj/kTO/JfyPHuNTv1OIvOq/avwJZsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea23d84f-2c1a77e4-0f6e-4f49-9ddd-5d4965da4884-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acaf5a0f6f63124ca540fb270db9d5f3f7a3e31389c92d3b56f25cde981a337f
Date: Sun, 22 May 2022 05:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653195659
