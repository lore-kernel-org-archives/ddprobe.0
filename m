Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92CB8257E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 15:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644680433;
	h=To:Subject:From:Message-Id:Date;
	bh=voHPKLODsq9K4rj2IS+KXF7jXcShiaBSdbO7HAaiSqk=;
	b=YMrhFquLNREfWNX49O6s3Dv7OQWc/wRrM3OtW6io1UOKeWoA6xMlpNJqJPQjgxks
	kndFgeSDqXZz5wYNmpTMTB2fMPMyV9jD1Z0Dkm0ZkWR8gdlpp36wPzCLNsEb3e+V4+e
	cUdk1P6gAp5Y0DfviHYxHDeYDAqnDyEFajSaStZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644680433;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=voHPKLODsq9K4rj2IS+KXF7jXcShiaBSdbO7HAaiSqk=;
	b=QjnhX9IbdddyytWhYcFZfd5e02+sFh9dho7nj1ZQJvr/NLEBXhy/dsZQQv2oEN/U
	4oZVgic9GDz5UMxwRAWX4AUpM5NNbVCrBwZXMVP5eWs7h1cgTBnCIiKZ1L9g2AJWi2U
	/Hh399cT9xnJt5gUOvLnAet4mmJbS2CdmsXRoznc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eee97d043-1311c02e-d275-43f5-9fd8-8a38060b4b1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b0e01ba089d1deeaf19045bf18711186d4eabaf3aad96153b3dd318eb6abcc0
Date: Sat, 12 Feb 2022 15:40:33 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644680433
