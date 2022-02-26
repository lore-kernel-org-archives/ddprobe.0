Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B431C7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645915885;
	h=To:Subject:From:Message-Id:Date;
	bh=lxqjC43U5kErJblVGBNuHuiFxFBzjfkpZTF2o0Fv0Qs=;
	b=kG9OoZV8yNtMfiTjRA5NFgj/5mDjU57+z/kBWBpGwSs9KOOJmlYy4q8LNUdW4cig
	veeDgmgUnaS+AQKhY/N+T3cR22cYKoKF5hW++/9381pvvC7zgA7t44GxPIpebgMJV9n
	YgCZ2KHrwOAADe9V1zhvv6ua8WEtW/50OW8Sd3xo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645915885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lxqjC43U5kErJblVGBNuHuiFxFBzjfkpZTF2o0Fv0Qs=;
	b=VVMXIRKTzzShBenABowOiiqQD0Zc4FWx82rchLx3ZyMoBSWMjX0cT4sk5Qy5xH+Y
	f0Fih/AztfXrius0LX3BUWSkGAig/HBC98CK+if0G6fbyXX3KAWaKC2DWlkp0hgSc5N
	eNT3o/hu5zB5iRZYVcMOJIFMPCdT/1kmchdEm7IQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f383b4d2a-7cfb248b-4489-48b0-a3f0-6ccb7dc9c3c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfc96e741477629bd7dc8ebc664dc2367a3144a7c227bb385d983f8dc33514a5
Date: Sat, 26 Feb 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645915884
