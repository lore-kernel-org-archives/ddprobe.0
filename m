Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7743D38EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645867284;
	h=To:Subject:From:Message-Id:Date;
	bh=cBrL8U71rL/ejZ3eO65uGi65w1RxODIDt2H5LiNHaIA=;
	b=dm+sF6fiau1+jP0xxs1Hy0Bmi3Ct1dFTAtVcoamJkXmG2neVekQpoexKFWJXiOyO
	t+EWDk9XwJ2vTDhTn+yXr7ykAchBOwJy3zAqrxdSXR3zXe4WXeINVQqyAMflxoorrlD
	DY85oSdV3Z9DylM0+UEch/nfEPdv+DtylfS65Io8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645867284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cBrL8U71rL/ejZ3eO65uGi65w1RxODIDt2H5LiNHaIA=;
	b=QOIpyZDsQ0dq+9v3+um9nKeCzoVwHQLJkc4rtYZKGbFeZIeCiGUnP8emqx9SdIyM
	+H79TKj07ec9SfCQbSUFZhur7AFVzhpW97olE9fkGKMKKzxYRr4ns4+uBr8zSdLNym3
	fTqZ8FmJZl/xxxH6Z/9/P4qeXI35qLGocG1q4ULw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3555b934-3f466fde-74ee-4fe6-b9a3-45f744a08d1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3422d0b6fc719c28da3279548a6774365f18c7ce044e5d79e5f15bf41789f5fc
Date: Sat, 26 Feb 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645867284
