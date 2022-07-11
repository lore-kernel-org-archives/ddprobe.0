Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE754411
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657556812;
	h=To:Subject:From:Message-Id:Date;
	bh=H1jGuSC7EiWwFg7y4JyZdbFTxjjEOangJgxkbjKt0Sw=;
	b=fgE/GRkW4pEKHFbWAjcFsA5Qqnzb28cQVhK7UEVCFqXlAQR+xS4rLM0/yKpOQzpg
	Trbp86bKLSwa8WVa98Dq0pFOU2O/3/09+JYWezy1xX9SH4PpW/vKJvwVekxAuKs1NMw
	6ps2iEDAHr+cM7MsGcoi1G/SkNvnTwfHPlqe5+uQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657556812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H1jGuSC7EiWwFg7y4JyZdbFTxjjEOangJgxkbjKt0Sw=;
	b=ZN25d2NcFT3xvyA4ahyNNDQK4h5P3RonCQnlt5zHHgy+7aVdv6hyMh6YDKgS3NXq
	2jeQV7+OoJe330IflqYualEuAf2Qi4d4NywdgMZyrOC61LTSwlPbgoBhSVkLgzeT8ro
	jhxe16csupaLb5ng2dtt144NGrpnjrBMbt+yiTb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee15c1f5-a33c6cf5-3da0-4563-a651-145697dd523d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c21b82d68def7441d87236ee8ca654699934f6ff40b36110eecefd35166a0792
Date: Mon, 11 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657556812
