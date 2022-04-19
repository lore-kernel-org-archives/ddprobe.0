Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0053F7A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 13:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650376318;
	h=To:Subject:From:Message-Id:Date;
	bh=98yIR3qlqJUxkqLn1ZCfmdFzbFu83R/Zu4FxcR47RlQ=;
	b=Yznz9grvPoh0f8p2XWz4Dec5yC68V7NQxCE2GDcevFAZwXBAv9i5Mu2i+CW2a5DL
	gE2w/EvyWdBURr4B/EppzafXr/h6GdDO0R4QSO+mPu8zDHTay//nWvr8D7jX0HBsHsl
	g0b/Ux5COiPBwzT9RrfMTyQ69ySPp17kcgfBQYPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650376318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=98yIR3qlqJUxkqLn1ZCfmdFzbFu83R/Zu4FxcR47RlQ=;
	b=gVg4qwse43LZ7dUnUoHwErrl46BHlQzMIUBvmjYcXTfnicfR+jh/eszwzJl50/3t
	L93nwxi+WSe+G0Mayz5Mu3Zvf5VGyuJVaY5JXxINVrCSgR58emQ/oi8Hsln3rw55ES3
	Puoaj/LxrhdqVec1hg9sqSLCAZzI6GyeVVDTGgxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018042181d46-db857665-be67-43c7-99d6-13f0d2d2639f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 228baaa125367568e92314425367af680818caeb68842a73fe98cdaf27a17cd2
Date: Tue, 19 Apr 2022 13:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650376318
