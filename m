Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0431FA0
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 00:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652142779;
	h=To:Subject:From:Message-Id:Date;
	bh=0l+DbZKcFSeHjh+khDgL1dykT0GCYNSNIGRRdHDaLhw=;
	b=XIvMsHud5T0aNzeYLKhxhwqnM6pDx1EG5jmPSED4VqExtSqEzrzJ2eiTJjKthTXr
	lhn6yML4EUhVrwRHlVfLhMraEc/EGFJaX3WerTGZuXLc5llO8xSKfy3bC2u6jfyIWx7
	ZFU7CCEyTvmrtPW+7Q2jOIsBNDpNSq/GclExH7sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652142779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0l+DbZKcFSeHjh+khDgL1dykT0GCYNSNIGRRdHDaLhw=;
	b=Qe4+6op0xh4+2zzBNefRiN4yy3oNTZLeppNs4XOOtubvwPgfeLfnZoCkgQT0+Fw+
	Ddihf/XSEUO1r6GmxroGU23hVJEjlDjBBvQjLtPAP0bKgiW+NmKAsUmGFWZITQsP6W4
	1IkhAHylAMcYU7uGHjUROQ3xu7MPsW4qG7r7+YQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab622bce-eafdb48d-3985-4684-9b42-15f4c87bc3a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 397a3a15a2093fe934c4af0c6d4ec48a6ed7a350d44c4e32d8e19cfde74ba75d
Date: Tue, 10 May 2022 00:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652142779
