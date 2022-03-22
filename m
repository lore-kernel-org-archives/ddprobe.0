Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4607E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647955284;
	h=To:Subject:From:Message-Id:Date;
	bh=3BNM7A9sw5MDQcWTYBtKCCY7iHPVnSLjjiCfNokrczk=;
	b=Qtq5E8vRD5Sg9eJbnFz2oG/dWBHgpexfukQH3rA4MDOtYvE9e1e+uIMm1sGbWNAC
	Kek2UeIXE7Dxj7gTfl9zd9MVVvpLLEZDMUmPcpoOeWZpGuiPbJjAQ38XuRHkLVzd07F
	iyNAVJQKxlylJPuonmghT1wFX4fWQP6OhZVnczGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647955284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3BNM7A9sw5MDQcWTYBtKCCY7iHPVnSLjjiCfNokrczk=;
	b=FthoT7FWgwPI0RfGaDN7+XNzDGs7P6X0FTHc1FTBPCPm3DTvORwzzx/W57wKm5hN
	jDnu7IQTjrACJ7iFbi+xbKD1WrUn/ftox2yzc0reibrNkP0nCyL2jOCqaAEwamp6kwN
	5jZw1HR3Y7xwqsHq8gJjLXjrtarknd0GfUT9LzvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1ca12fa-893f1ae7-0d5a-4677-be8e-de3151ae4e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99c6bdfe233bfb7bf611b1bd525f054c4b8de6f0d0fe0b25a1f8648849a63966
Date: Tue, 22 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647955284
