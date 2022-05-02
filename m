Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDA17F
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 08:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651479478;
	h=To:Subject:From:Message-Id:Date;
	bh=Y1sNfARylzhm3R0FPbg/V/Jf7o3LG1xHkdGVMpAd0x0=;
	b=K+Ood+E7s4fUmTlJtevVSBl5QuUFoSsJbw6nPYIJjCr6sIpDlMQkz1/7e8TLTihr
	b+l3QVgo8cyKsYHQVuKKDNDvrSjpB62F6AgRxBvGUzc9Vm6xad/3IC2huoVZ6pCZpA0
	hB2q5zV+/CWLS0MRRyV1kEsAg7cPda2K9IC5bXVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651479478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y1sNfARylzhm3R0FPbg/V/Jf7o3LG1xHkdGVMpAd0x0=;
	b=SWfnfwp10FOOpO+UV3s8kkU+qLlXEGprrGQXUDPTT58wIS/z5+idRqhhLhBAndha
	gn13ZZa6gRlTMeu3DIHXFD8ZYA399cpYZGg6yJGLsHwBExt7dX9zc07+xYaAfu6mCwz
	D5zedadlTnN1NUbWdsRta+7Sz0LqKovE1ZAjmMzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018083d8fffc-c4f07c12-7df3-4fd7-a33a-70cea2dbecfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1f37e98c8a358c5f72bcb1651490849cee6781c85ed8c08672e476504de40f3
Date: Mon, 2 May 2022 08:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651479478
