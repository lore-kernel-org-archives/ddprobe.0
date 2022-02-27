Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0847B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645959985;
	h=To:Subject:From:Message-Id:Date;
	bh=sbv6i3VQWCjIp4AJcbin5+oRb0Nu7MsxG35Km95IZiI=;
	b=IpuOaGGfNJlFH6tmPJL5vqfwl6td/Qb4Zv0GW/bolR4JRMGpUIgz94NWAeiPBhVq
	Xiz0DuL8htxe+1u9NAPvsT/VxoZVGw9smPBBV4P7Oy5l9cC1pI8TW35Lzo79/I22i0g
	gq3qQV+QHpWYSk8IuFeXpRWViU7TrX6DatlPXzMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645959985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sbv6i3VQWCjIp4AJcbin5+oRb0Nu7MsxG35Km95IZiI=;
	b=CvX7zqecJUI9n3D7pZSahMhceQSY01Xgl7rOKXM9bCfiZRMRn0VLmpN2Y9r47AMv
	iJwXHhECD2rOiall//WerB9TNf+9D3zoXuL5500oSH1xWH5W29nk//i+mzh9M+lg8kf
	qWDiFaTT1hUBP4Qlfs2qKVrgpsULeIcilra3atrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3adc36b8-681d33ca-ccf4-4a7b-bbd8-2beb20ec4e59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5214b14c9646aa8ff9cfbfe6e3a13a7d2048ca5f1623424b2d9cbd5a603a04a8
Date: Sun, 27 Feb 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645959984
