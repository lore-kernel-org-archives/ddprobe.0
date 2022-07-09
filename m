Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34407B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657396012;
	h=To:Subject:From:Message-Id:Date;
	bh=eHDgfhv1AJYugP+OqVerJB5QgR2LgVDFfA8pNce+3vA=;
	b=L6yTNoNMQZl33d10Z/LKz31GZjwD9nPYzjxzzdDZ9LVJhrZ1YUj54kpTmemCUpFY
	qfJTrcchq5vKUvbk0e93KKUoc8sYuEaA3DAXLQdSIqy+1W07PssJKTdUza2yFvUGnuQ
	im7fQ4n8ssFcn1uUbeaKyJPTMqO1VodIpveNyHfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657396012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eHDgfhv1AJYugP+OqVerJB5QgR2LgVDFfA8pNce+3vA=;
	b=fIO8M7dF2Ix5Kw7e/3adXy/pDSJNZNulXbzi89xR0hTxWQv1uABOrP1gsKlqpxRY
	QbK858vfcHcXSZGgi6IbAS7ITaCeZWeKiwQv23RbJTudLx5CUgN5clhQF7a0f4CxRKI
	8YTngAYvNx7tm11xpglZetN1VOZkvJRFLQPJxDhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4802536-ce4a1c44-83fc-4a77-b3f6-57ac5d4ce912-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 355d7e1f92252099df2b48e3efe749a744cf2265354ad0fc564ac4777821998b
Date: Sat, 9 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657396012
