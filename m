Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7214C60
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657040812;
	h=To:Subject:From:Message-Id:Date;
	bh=qEQpmMpRCbJcdw9jpXLVkMvlDV8D9seB/v+IJ/DgFDs=;
	b=U7bbodOsz7U14F1oOD7G6VHxU9vraRGEBzpw+pcBmUu9M+JWFDnnqXzVQCFBLj2V
	01CMlHkV1wlPfeQFUGZ8Mp0xFAMmCozPROr2HPKrdgBAS5DNtupVGs0KqGULcjeoi1R
	hwLO/Yqbz6Eg9Jv8HAr+e94+83kVHdgEkQyH0zw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657040812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qEQpmMpRCbJcdw9jpXLVkMvlDV8D9seB/v+IJ/DgFDs=;
	b=XMMHOzZX/heuw7TORhN0BAIJWs9TpJZ6EhY2setu/iGMgzgpDXVZfS/NvC9kFix6
	w0FZ56j7BFZKfzuP9x12btJMdlI4pxmGJyoZ7hQsG7bJ1KMBHRy4eiB0yyKihoe3FrB
	LkXxc6WvczRpN9vAsRVh5f8Zh1bF2ZlDcnwAQwA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf54390a-930ddcb7-048c-42b4-9fd3-f85aa9ad6bb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3194b17c52dce772d3601b2883d22413654f149394be21134004b3d5fd86e7ec
Date: Tue, 5 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657040812
