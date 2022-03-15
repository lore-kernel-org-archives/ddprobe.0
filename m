Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504041B6F
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647355584;
	h=To:Subject:From:Message-Id:Date;
	bh=QyhWXXVmgEXRDQYUBsRfwf2uNG+vmcOdZLkd4s3PA7o=;
	b=JzarYmSv5qxZzMFNW++v2ZCMaoy7wxjCgenr3MIjPRNCZPKEPX2VkKKfqc3LyC/K
	rdcar7dB99kCFtvCCkT+hrsPULcxt2MWB6GxjFZEZXW8+DMDzntnFg1GYROEePqX3G8
	9KNAbnqDA7WsGCH7kD9rP71RUXjitOXvseuOcwy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647355584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QyhWXXVmgEXRDQYUBsRfwf2uNG+vmcOdZLkd4s3PA7o=;
	b=W5CNzTYy0+9Ds6u3hTURqJCBdDjLsICSXqxSs2PZUPd0jdvsQUAXCgznb4qCnRaI
	nptVOYsqFUx2mxRob4DOtivA+FMjqdMV74i5J6JnZc92uNVJerpQ11VIjIoJ9bDXntI
	9VU2HN5D3SCK8cbnTmJriol3S1T8UtW8IGJxndR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e0b610f-4f927991-f1d8-4d33-8aba-d9d90a8d1fca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 420590c90d697dd84a0c7bf4c87a06c4e20403f90310b5cb3d1eadd342c69cfc
Date: Tue, 15 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647355584
