Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FEE7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 03:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644721260;
	h=To:Subject:From:Message-Id:Date;
	bh=Zmp0ktpH0ki7E55rFjiDZDu8RbTklgKlAeyXHqRzb7o=;
	b=NPbg/Stvi0+EcGd+SJtznxA88oEPSzYmG0og6+VksWlSDWmHDVCO5FmA4jRgoRfg
	x8/TBUnGfscBuLQOqU0t1iNkppEJMT3Ev0PMzkO+hIh2htHKqwu2mmhq1dR1Ts5HIfz
	I1R9fW4+q9KFJ+x4x8k3URG4EGoh1SCPRrO8QKs4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644721260;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zmp0ktpH0ki7E55rFjiDZDu8RbTklgKlAeyXHqRzb7o=;
	b=RyxJJEVxVX7x3q8x7vzDxu4FLGcocpH6k2L7UJMBs6zz8zLlSkWF8XgsdijVME5a
	JJPbsTPT49DP/VxBttn1oP0Qv9ldaGqA8IOXsgFnZOcWGJ+aTXrWk0fytSoq+AoqX2I
	TgFnBHbsayO83KvLJfeKlGqonNui2lvxRU4giaW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef106c72f-e27c2574-4b46-478b-b5de-405eaf32862e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b5457d2750030350724084832ac264b44211c13bec3ac9c044005998f782295
Date: Sun, 13 Feb 2022 03:01:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644721260
