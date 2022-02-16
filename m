Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8500A1FC8
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644986784;
	h=To:Subject:From:Message-Id:Date;
	bh=fUSGmI5AsB21jeYxLB6k3P/XlFT48gRR/iZ6AGcCqxM=;
	b=Ft+faDXqvJ8Cx6PQUqX1AR55mPIwUDc9IWVMNETtWvGlIgu/O0yNKv5bwFkpxu8Y
	dCKgpkx12EZ4RoO+Don6VgKdtV6tPiARxpk0ohNI7KvIpZSDC0I4OFoegA0CBUbh+62
	+RH+GW2qg7D0e4a+dkixfh7WXk7xTKVRc6LwV1KE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644986784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fUSGmI5AsB21jeYxLB6k3P/XlFT48gRR/iZ6AGcCqxM=;
	b=U+4CFFg+m6N96XEHYC9jmKRjiPwJYGi5X1idE8GXciUHe+bxQljdu9Ac0RHFTKB3
	Zf1zBIk/YyGY/0hJLTk8Oal9jTZ/bv/+JHScLmJYxsTMxyKArwk5GNnPb/EtpiMH1Vp
	H1UhGF4sp/+1r4l34GsIPI0jNNb6DtUK4zHl7Kdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00da5bd8-d0104de2-6b76-4167-8d0c-c4df81cd597e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48ea0dc7e398cad6711ac262154ea1210a86bc7552a46bb0675353d46812fb96
Date: Wed, 16 Feb 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644986784
