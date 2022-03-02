Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B356233CA
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646262685;
	h=To:Subject:From:Message-Id:Date;
	bh=oO+bpP5dM+1Uz1JjTjyvyrvv30vn0GJB1D7D+rYlHFc=;
	b=gA588WAD3Q7vtX9c/T4oCNHubZyzyYKYi02GKUNl1xDORTBWvGUjOFECSW9KyavK
	IXXD526VM00o1pgiPnp1eJXH9Dk8y8pRrQIh277RpaSKzxsu43Igf1I3c4xiqml+my7
	mib38v3dG41uJqUYX5hNsWPdvSQqObVzrVvEubv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646262685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oO+bpP5dM+1Uz1JjTjyvyrvv30vn0GJB1D7D+rYlHFc=;
	b=NXEHtPAWdCFUJyHJ3I26OCazYENpNRoMMuf9n4J49LmBWwY9/fyFGU0Sx+8SF30j
	AjpDYtoYHVwzcXxariXXJgvTeISUn5KYOOP8LqK6TkHZFd5mOp/l6U6jENo0e5vDTTi
	x6nPrbw08GGT/xARnks6KOyScR6IlCDHb1w7rju0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ce70cf3-0ff75e60-d058-4f1d-bc3d-f56a4b3c811e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8206c7f1156aa56a7afbd67197b3a21255a501351a3559081e95b79fe960c0f6
Date: Wed, 2 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646262684
