Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71584AA4
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645200985;
	h=To:Subject:From:Message-Id:Date;
	bh=GuCW1yzFSeGpNFYEtgYH3lh515Yv45Ci1kg7Qr2XSwc=;
	b=Qr3UOZUpMFWg4OD6JxLPUBqzIu9zc7QCkurKvOPjtNnidwZ1e6WT2zuO+YF2WLGt
	GoXIgobNpkoHHuCqGYQhGKNGd0DHA2nOsKGVO8MI22pHTEsOLMLiVknneBLfBlPq7/j
	yB3WOfWDxhrqmVeWL8xLvTuQ3IfCxkfbyXJVOE4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645200985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GuCW1yzFSeGpNFYEtgYH3lh515Yv45Ci1kg7Qr2XSwc=;
	b=Fdia3hgBka1GQ1RSG3aK7dblqDPhbY8BtSAkLugNlOWh5c4QAdAQEAPBFzx0KSip
	G7IUCuvB5xViy1d31oaIZhmSCJW57zMrfawAqR2dGWsI79SpExhBitk4QCPVbNGl3yw
	2KId5Ny6VCl0K1DbTjy2X450muivmzU2QyZDsj4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d9ecaea-52a65744-fd20-4307-9222-f19e05592209-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eac2561aaf611116013a71598bc75610aad5116193ab5be4ea99c10359561882
Date: Fri, 18 Feb 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645200984
