Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67807B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645900585;
	h=To:Subject:From:Message-Id:Date;
	bh=8ZqPzy33m8RrjbJiuesjh+ZIIgISzFvQEMDJnwrEj0g=;
	b=FE8HOuLaYxRg+xbjLRJ5IoYp7nMHn48Tn+h1r1TnhDgFGwcWHPA79dppINiUnsOl
	WOZQP1ptcavGeH0sF5EOLPqKu4mGqWBzLk3uAnNwfBDCOjHy3x5lUH9J8i7vSJhSF5V
	l84AACi80Idkx0R4vWn7N/0OrgzA76PEJyEgI5xM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645900585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ZqPzy33m8RrjbJiuesjh+ZIIgISzFvQEMDJnwrEj0g=;
	b=aCFtZw43OVU+uRGaAN2h+61tiTv/kUYeF4Y0e3PXP3Mgnbgeme4BPWbOME4PBD6X
	/bkltBzV80uCbhe3ij0G+2xsDOSi/awXlvvm9m7S1afVPJOfGYOMmaB1rC4kJLw2sws
	O+a81vJPOEmVRW9sk9juYCnMvZW+1/oBuROsW5ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3751d74d-961ac89f-0793-46c9-88ac-0075d0c02fc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e7d8345e18c730306da13528efec8af203b3fbcd7050ab5bede61ea59a2b605
Date: Sat, 26 Feb 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645900584
