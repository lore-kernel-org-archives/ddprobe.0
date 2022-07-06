Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1269317E8
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657072012;
	h=To:Subject:From:Message-Id:Date;
	bh=GSGx/nkUEMeO5N3Qlglvz6x85o9azem5nIZQsLcdHLs=;
	b=Xyu88iEOR9A9QRz5P33Ksfy7NalOs0BaSOfpGMY/AjYPjGgwxzI0zPoCxxEHsrG0
	OO9/qyTG6n0UXmZqB7RwsBF/91HIosS3dK6TQTY3IrWu6Ux28nlDiIss94PfMcFiw0o
	/i6DdrMwBBwp5PcQQpUcDedPRYpHaE3HFcWULgzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657072012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GSGx/nkUEMeO5N3Qlglvz6x85o9azem5nIZQsLcdHLs=;
	b=LvSXAG/uA42SGhFer1QeIJRqEMoLWlyO/75hcyum4uqKvFDK+JXhePIijei131C1
	LR7e8MIY0L/e7HoUgaH07uMiUMwvZ0HoogfMzdn/yP7T34KG9sZd/0ft8UE0pHgT5lz
	ZU9TXRc32B6JJZF1utXK2v+k09nVGKs/s5vhWXro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1304be3-7498f02c-04c9-4cde-b314-3423829bfb10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7a367ed2137f84d0b807dda8cdaf6b7b4e7189dc3f806e0357f6a6ca53085a1
Date: Wed, 6 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657072012
