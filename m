Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D6C2F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645149084;
	h=To:Subject:From:Message-Id:Date;
	bh=l8zsQOJGaOsnHiOwIU1L7K3MHtSmEYLIYZQNfnmzrWw=;
	b=LdLwD6W0iiXNvQFSwlItbbbZTG/+vDlSynCM4+H4QMJ6lT3aHnsZdiWcePULKIOc
	6Zr3CbbGJAGo2tFPjFjl1VwCKOAlnz7umqlKAVHAt+oJLOnV7JhSHalYinTGgC5SWdn
	ulV793a/vFE27GySxiAZeMPamzzzszf4qUIzUwbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645149084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l8zsQOJGaOsnHiOwIU1L7K3MHtSmEYLIYZQNfnmzrWw=;
	b=fl8jZapXbuyaFLEsHUM33+by2vOwjGMucsPA5/bwWxiWfJMxBfZbjvcanW/6kHxS
	uu1WdluwwaFF/y7aX5Wf3u/Xbu6tJ4Rn9B9WnCaDhj5AsRZDEu2iP0SQi0mWghF+N1X
	ARDD/qYSIRXzXufgd94is7/HBfdFyLECU0wsRUPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a86dc41-fed87dce-24d8-4694-89d6-7256ef9de78e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d81cd07a0e7ef3824fe225b386787f35fe51aee21302b1755555a69d01312f6
Date: Fri, 18 Feb 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645149084
