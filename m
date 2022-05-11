Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBE52F43
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 16:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652285279;
	h=To:Subject:From:Message-Id:Date;
	bh=5JMtUkh0IdMY+cVIHEpbEFMCZ2GOIPr6FwoXMPR8li4=;
	b=ioRPVMH8oCUwoAXn0CBzvjOh7nlJJ97koO6jdd0sgPQTQ3duruizEmiLMX6nzClE
	XAIaSYTpmzDTgjxU+9o0G41rtAl8URQzwMhzhbybVeKWbZbaokYvPqyUsb9MfjGxOW8
	dOS6H1GgzBBz3e1AFwMHV7dnHchlxyTztDkqQhHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652285279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5JMtUkh0IdMY+cVIHEpbEFMCZ2GOIPr6FwoXMPR8li4=;
	b=NP0n+yl3hrQ8Pox7F0qp1to57MzlUpQyKYfERTwZDtsfE3rp/SwakaATn087TIGp
	1OM5IvWPze6JdC8leMnEJaDdBkO8j9ndOcB/j/dpqeTKruS+I7bxiSxRKL8HwNN4bBO
	9VDdGaDRAgjQ/0s74J9tFzu+PVdakV7vVvz6KeQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b3e08c50-40e71762-192c-4429-aa7a-27d46a87127b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee46742a1b2167753fb0d16c3d575ad0d9f976e5dc7ec7f50e2f5fb4575a3712
Date: Wed, 11 May 2022 16:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652285279
