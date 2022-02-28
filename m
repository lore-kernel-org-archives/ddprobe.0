Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB65B15BF
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646081485;
	h=To:Subject:From:Message-Id:Date;
	bh=XeUdyN3b+ny7wdHIRHeQQF+UBk7meOiXGmvDqiDCrPM=;
	b=mKGLasvDcYi46dJZtgoNifxNXlI8dpoFlDjbh+a3k3oxcmBU8TWrQ5/9qMm26Ign
	ubmK7J5lHaNOPbu6ouOQ5TBA31wL+l6RK/O5BGP11L3VuxR/WOZOROJJx1/uPj4Z7el
	aPrAru6XQoyEun4PvmBEN2AD5vU5lfjbr0b648yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646081485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XeUdyN3b+ny7wdHIRHeQQF+UBk7meOiXGmvDqiDCrPM=;
	b=IJXPsUn7zOnOEOxOl4M4AeagO0ewvsYxVWvvZaChUotqpWj4/gTUqtZCT0i9LWO3
	LQl5x6VfBVJ1E9L5xXRZP/T6BWYSsL5kEMqFd3LdfEfM98Dsnrg6uU6BQ/+PRutUSn0
	gBWdrHHf3jqMg9V3KaLMAqO9gVRCXeJM3Eikc58A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f421a27ae-7d2ce45d-e836-464a-a81d-93223bc97a49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76f4a13c36601059ef3297d36e96537045d5fac82e7b6a98ee28c31e41ac0b69
Date: Mon, 28 Feb 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646081484
