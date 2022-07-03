Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33AC4429
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656818812;
	h=To:Subject:From:Message-Id:Date;
	bh=XLRmiIJ2FjBkgx0dli34qufkB6uWGygdGVscqiYgtjs=;
	b=Vvi498BrDoX9XoZgih2cMTjOP082hiP0dQ8gjyh1iaEXsTexHtHY5kDSwl+mKXTB
	muphR+fFfQkc0oxUde4SM/pjNsuiGp6PIMblfWv/LnBbMvid3lOti8VWlPqi9jjUYR0
	fxp4DZ9GKDCIWDicf1CfaNmk5hNDk1tM1KtJW8XU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656818812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XLRmiIJ2FjBkgx0dli34qufkB6uWGygdGVscqiYgtjs=;
	b=G3Rmy4GR7nxny39WVdkayV/cvheifgepaBqHJsxrQejwHPqPr/cbNbsc/afQup6+
	vnHllZAog3B55Fj2Krced6Lsb8ceJPCAJrSGBKgwdlV/sXNMu7mI+7LYiTzbr3BxQUp
	63c9n35pQIOAjsKSnQodbu517pFAf5336GTBTQqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c218c57a-e948a2a1-06e1-40cd-ad6d-14208e1079fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 228d95cbffa7f2412a240df5729be4a9086be036f7edd9405ec31d6e41a5cf53
Date: Sun, 3 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656818812
