Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A537D7B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645605084;
	h=To:Subject:From:Message-Id:Date;
	bh=FqvILxQGiNAJ8GTlkj9mcl2VGKmSK/WgS9UMcsTioac=;
	b=gMgl0r3K4Ry/IOPGGPpKeIZumPcY7INaRHF6U9o/qZB+Vh/cTQ0LFozd5MtCVJh2
	I0KTKkYBeHbT3JjSx947tz9FLoGEmlv90RPlW6YlM2/ybfnvbae8GB78to1qYgxZBHl
	MyGw8P2d4EtKgKrl5n2bKM0ODM0H8ia+WQxjAjEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645605084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FqvILxQGiNAJ8GTlkj9mcl2VGKmSK/WgS9UMcsTioac=;
	b=FO7Nf+f8m/mPE+MLESM/0L1DExb+tQV4TsMZPxml6HT1uTRU2NWV+R+2cqTn3OZP
	oqEnQFmfcL0Qj78ymJ/DVH+e3zO2xKKX5bWK+oBeM3Jde7/OrktaoQGbM3RS2iNW04D
	RzxJgavuNUuURQ2VkzwFry2z/hHAk6ACzMmc6QwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25b4de85-f192fa57-c59e-492b-9e02-61ed91198bed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fa0769dfc2fb842dc35f788475c39ce3cafbb4ad596dd5c0e54b7d05dd645eb
Date: Wed, 23 Feb 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645605084
