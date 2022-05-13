Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4044F173
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 12:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652445299;
	h=To:Subject:From:Message-Id:Date;
	bh=zbLJCNIeREWgDbzeV+tHhVIymLKSaO5GH6w1X3NiDdA=;
	b=cWG3s5khpWM8hhQfNkx6L8aDF4bhXrANFqRSVTZLzq33CCUJmU5fZUHI9LtGi7RK
	aUtlMB/u3WG5ceBVc807Z8tRox4+b1+Bxk7Z8Dnd14+UK9sMHg4cxEfOEqhvmDseMnp
	b0wQt9FwYRYeLpwj9E+Yl11Zcy8x7V79LFquK/E4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652445299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zbLJCNIeREWgDbzeV+tHhVIymLKSaO5GH6w1X3NiDdA=;
	b=GlmSm0zPH91Vw7NPLYfuY/FuRtRFNbZd3P1kyjsXCimJ/AX7ps5yyCvlURlY9L4D
	Smy/OLrKtwhYG3UOZp0GxHe7Op2G3Wd+7i7la0Usqqrfe/gq6dpztHqRIvUKDFqS2w6
	LvmqiJkMHxPUUlAwwDc15zrF/bwioTHniC/osyxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd6a4261-f252b80b-65dc-411e-afe2-4fd247cf353c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83d22155bd7af08a847061efca4633127f8404dffc49e2ef36b1906d29169b29
Date: Fri, 13 May 2022 12:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652445299
