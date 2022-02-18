Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4552F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645182385;
	h=To:Subject:From:Message-Id:Date;
	bh=tRLt6FmBjlhncyZ+54kyg/aGb9IwwHoMeB/PQWRYyvs=;
	b=egFzV9Uw3W1QIASXg+fyYMfplXL9cihp1MRNCsl26dfCZfxrYECxwDwc/8XS/+i1
	nZByg9nw0IPfep4ptyifxPM84RVBI9smdBcRzR9AGHDcO0GxjMWTUCEdKOflUKvwvm4
	KIUVA4yJ+vhBJ6nbLKQKNXzNO4c1g7cXbMzKnalM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645182385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tRLt6FmBjlhncyZ+54kyg/aGb9IwwHoMeB/PQWRYyvs=;
	b=ghhrLkd+ZdDhEqDFxsyasxOwTQ0VKw3JQiDNuiTuQtwCwYqsADvzzqlpFsnni4+n
	zqvcgmQ8AdHdTwYbZK2l8RC7ZHCuHxtuVmIQSVaXG8GMbhhFNvYDMOIdeJsyZnDL4IM
	omzYi/h1bjkxCj03e0RO/MD3VB78Ft3ZIMhQdntY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c82fa86-7c5bb7d8-d2e5-4199-91f2-a1eca7938263-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 445540b44b24ac6deab93dcc833ca277eec955fc66d046bf01c914d40fe90399
Date: Fri, 18 Feb 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645182384
