Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246687E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 04:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648096678;
	h=To:Subject:From:Message-Id:Date;
	bh=a9Aeb2NguDI4yOG9J/zAshB2Iba0ZzW5PLCfmO24Dxw=;
	b=RG0GmA+cMGoAcq4yRWNeSlx2xd/8dXroFVVs1D2PMYkILn9PO1cfHzYySM3P7f1I
	1crLHdn543w1id+RejpLR1qfYQtfMbFFLCuACdT7FuXfpkaQ7u4ZzTpqMk/lGrCWuQX
	FJ/w9Vsj/SO4DTyi9yWM1ahZAwAxwcV2/ZNExigI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648096678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a9Aeb2NguDI4yOG9J/zAshB2Iba0ZzW5PLCfmO24Dxw=;
	b=R+ms5HC7FlNjq57po9BEtjnoMd/lnWPMKJ0XMUAy4bVTbofKcnzWxyeLixgZ/qBo
	L/1SlTf9tkmW3bypNKTjHotQAxwdTwiNI3Gg7+kk1MsgCCuq2MHfMVoHJxtUNsciiA5
	oYV4OODX8jj1GQNUOoOzCQL38a9hzSoM2fZeneek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba379197-753f94cb-f786-4314-8c71-aaf76bd82b1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3a758892cd45748f4482a6a8ea07d9ec31ba5b2fa8aa1f7dd70b9b296cefa2e
Date: Thu, 24 Mar 2022 04:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648096678
