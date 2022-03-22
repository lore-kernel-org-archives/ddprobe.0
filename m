Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3245C75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647957684;
	h=To:Subject:From:Message-Id:Date;
	bh=6y/Z2HYjCga6FvVhc07r+QcGEhnSzH0Pfakfo7o1CL4=;
	b=S34GZjPQrVxr/EAOdR4TN4L+4TBD7mmg044W0L7MQ1z2dyH/CvKmMipc1VKRJrM4
	Q3pszwbReYcQGzzzIu2VSsA/ejxnoiRtNXI92b3/GGts2yUchuZFpaiXmbIVzzQiw7V
	jDA5PILibADF6LT4e8yKKefJP38VTWbYyRfEN+Yw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647957684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6y/Z2HYjCga6FvVhc07r+QcGEhnSzH0Pfakfo7o1CL4=;
	b=kikOnUnEx1QZwwj92ZJ/3vcsGyj2upU6nLKj55mjfkQmFxhz2gswIWHtARIsDHyi
	3yGgiR3xyR310lDeJ2r2RHqwyISsdORoG2croxOMRe87ozXN2qMRYOT5Glm+FwnkQv5
	nV9ZF4w7Rb8J8gQWhZoBKej16d7rK0+qCv07tugs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1eeb22c-a7dc2c48-315e-4a3a-856f-9ccd31603db2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abda42c26eeea9660e29bd6319ce579d229b1f4e74cdf307d69af56e35cb750d
Date: Tue, 22 Mar 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647957684
