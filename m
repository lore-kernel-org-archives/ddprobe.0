Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C026194
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 10:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653906719;
	h=To:Subject:From:Message-Id:Date;
	bh=Nq1okuom9ZNHNvMz1GIGI7ELHvRn+ubgbXVjwZWk5HU=;
	b=clhpuUyJYy3Bbj4t2teRbRE0zT/QdaLWzl3xYtq8qHc1E7l/YM+7Dz1XAt7oxEQR
	YufLgx79vYLSRmvt/iO/WMuk/OezvBJ+euTHYsXNRImezxmkjFDrsbmu+dv5dW2RgvR
	O6LTd0+Sihbj/uKyvM7U4VWlUGcG+lE41ivmgrus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653906719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nq1okuom9ZNHNvMz1GIGI7ELHvRn+ubgbXVjwZWk5HU=;
	b=kx9h6+DGMsTDIJrRO6+JnX2QsOPat1K+NAwJJIdyOl6EgOjOV2IcJ+JlNfcGHgAb
	e9WZ2ovuryJKOfVFWVPBUsp02n+q0pMHJpVHe9tg/bLqPQPxRKUmLRSGsKO2hEHupij
	ARhVquor77p5flMg2dkt30J0InWNTzhtzGfNJWvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811485c20c-cb965684-b634-4e01-892e-ff837227c338-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4ea360e2126da545f0764a63be9456da5ca1bcd46a13b9b9e4805b4b9e72bbc
Date: Mon, 30 May 2022 10:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653906719
