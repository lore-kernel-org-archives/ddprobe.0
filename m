Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786227B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645316185;
	h=To:Subject:From:Message-Id:Date;
	bh=fx79oe8V6s3ZIKrubbf45zA3XWb09t6VPay92dl8+ec=;
	b=EDP0jAdt25ryLWHMvDst0iH9/HHsbra/gikM6belJRS/d59uAXUJAQt2J89G+bma
	MvjCTltdRaBIOp/fWt+YlKoUfrBQqEAmu0jBYhvqbrMCj7HQYQ1I3Zs6WGmHuWX9clM
	Jy/iwQ6rLQkM/T6MsiTeT3B5beoFdfkLjGGvn24I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645316185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fx79oe8V6s3ZIKrubbf45zA3XWb09t6VPay92dl8+ec=;
	b=ORgN/7jQzX/q8hjzEB689by3e5i9USad0ugBBxZbGM06HVK6CQh5reJKpEW294YY
	JSUWnTh+/nMHCHb4fiz/nPsmj1p0yUJug4K4HfaWxB+sxBLAwqytyN+KXs/aNtauwks
	16nmvSGDwoeOWgyPSnVkAS3X8VdClhM9hcvHdedI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f147c9ac9-cf777301-ebb9-4fb3-98fb-00a5a04d7d9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c558695042e09a83bf671f4f7d952bc2fe51af4d3b857e56c34db28980af91d
Date: Sun, 20 Feb 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645316184
