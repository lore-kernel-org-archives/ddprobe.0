Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6977C
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646735785;
	h=To:Subject:From:Message-Id:Date;
	bh=Dv4LmDirSUtlwrrvnhqw5XQZ4gnjx1GLub7gPTdJf3E=;
	b=HOw79i7Dslv0YginvMcjdIX7XmyYE0UOc1q7UztUH/JoLirYjF6XcVu9xgsv0zUF
	gljbxH1Rx604iGxTpMW1gAzoJwUs1i2Dsfk/FPv2jmMyglv0uVNP9oPNMwV1WSRBtcI
	uQXtqLxcG7OMJxCV2uEmmzTB5oSVZs2PicHTLasE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646735785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dv4LmDirSUtlwrrvnhqw5XQZ4gnjx1GLub7gPTdJf3E=;
	b=ghYl2Do6fAGtHVyfhGmA+YGzaIFpV/799gY1mcfAh9lG+M1qcUEb8IOOuswDXj5d
	LFqja6pxfiEkQuyo2GWrL6e3OIoKeejcis1mZEZOmOoifkmOOMHyiopQLozX8GCeaWl
	OpWCTvD8hsQGvFc3bJqLsY041+EJIQdwdFfG1JRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6919faf8-fd386340-2cda-4dda-bced-ec6bb8ffdf50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f07b8c1aeb1d87d8410427f86c315c900b7a7d231a9fa0d80fd75d1a117506b
Date: Tue, 8 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646735784
