Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2593A7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 10:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651572478;
	h=To:Subject:From:Message-Id:Date;
	bh=U9EXTJ8Y8r1PE4BBaPS0Dmk7sQ3KdAa8M9/tz2vGb2w=;
	b=O1S03bYPsOttJbV9q9bHtpDz1zcKybMoWj48qpqhQrN3lt1Z8aN/LpF15m7mALAT
	NvQKt7MBqKLXFjnVf+S02WVtvku183tf0pFORMPCt2XeScjJ9Alpm0PyL/oapZj1oj5
	FYXriI4CFBq0rk0pM2mMW5e2nAgvDzNdT8MR1770=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651572478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U9EXTJ8Y8r1PE4BBaPS0Dmk7sQ3KdAa8M9/tz2vGb2w=;
	b=e4xCdzCVXV1m0oorbjUdATJGQdyxzsfBzsyydQOK3hDedxqcvAvk9W8Yf0jAAK96
	0cVALRJKXZCbB5OORSGUIIt4jiAV3AExrWos9xO/cXvBd1nMGzgcL/JLqmg5fHrwxye
	rD6vzmmdr21eW+OkokKpZxTRIE7t9YocjzeOkrwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089641147-5dd03cb0-d9ea-4b32-9fd1-d6afa2432933-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3eee0e6f86d351fa972c487dcc1effadde795de47dfb5c565141bf36c253d97
Date: Tue, 3 May 2022 10:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651572478
