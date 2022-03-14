Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A997C186F
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647265884;
	h=To:Subject:From:Message-Id:Date;
	bh=6ocpcyXwVHDf+dp8TRKljnJcy7g9IFyEWif5JFIN1rs=;
	b=NfCQebt+VZd4ogpF+MHxbwm8K/00OLwE6C1OPXAc7F7w9qD8MDZUbav9fSzy030P
	DcfMlMsP8QXrR8CV+ju3BxQd48jIS75SGRkQ9ccg4goABmUcJTCY34Eo2NnSJjhQs7n
	PnIiSiPDTcrZyuCHvNjbH8PapAnsba0s4LC5os9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647265884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ocpcyXwVHDf+dp8TRKljnJcy7g9IFyEWif5JFIN1rs=;
	b=dTN841IMohcxWodwLpii2aBKA6VFJ7XsKUkGfLnwHeIOHRWG9EnkWeaNK3wUXvC2
	m9PtS/leTZXWaGyYV+yn7Ixf9cn0NydQixnrmzieUhHFf9KvtKbifCPQiYkfVSPtr7u
	kAg4ekQyNcy77M4bXEnfBbJ7lD/WPCyA11F83dYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88b2aa2e-e1c94c92-b8ec-4e7a-9053-359d6fd01b47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d7a2d0f027fd6a0a726479dd071da6d2d29ec8c11a2ae7ae50e2d1eec740ecb
Date: Mon, 14 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647265884
