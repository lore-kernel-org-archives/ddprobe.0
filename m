Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B81B1369
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 20:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655064959;
	h=To:Subject:From:Message-Id:Date;
	bh=4G7TPiTk8rd/+hbBsuBfpSOJI/m/lXV+bNDKc9J0IhI=;
	b=ck7jxFQm1RyA+Vc1ABHZvLibxUdlOhE6a2WgaDX4AC9RyiP3tiwNDvjfWgaDoBgE
	yRum1ON1ASw19nXaI76gkGTBFguMHcM7vr+p34ZoLh6+v2XGOdZHMJROIw2Fz5QRJBD
	ofE+t/2baiM8YbeLQzK//HZHBWi8nlnNI3Ka0GzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655064959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4G7TPiTk8rd/+hbBsuBfpSOJI/m/lXV+bNDKc9J0IhI=;
	b=ZYzZ5rOY8SSdiHUeoagLycPx62Xu9r4VMcszY2B9oP/9pjygw4zeOBHW0cWXd1dq
	g19NcWvJNKaDhmSzliZs4t63Xpppg+haZ8+xHPqTLcfD51I36OxQa8lyE9U+ahSs8CI
	BzRJVPw8N4Ynot5YdHmbOJnYP3fjB+YMl8z4QrkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181598f190d-5e0bd26d-05cd-4b6b-a5da-da1522ddc5ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 128740b728fb4c6d49368c0cbc75a6130acca862bb73024a6b23540356d852a6
Date: Sun, 12 Jun 2022 20:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655064959
