Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2B8EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659747052;
	h=To:Subject:From:Message-Id:Date;
	bh=PydnevNqFvLAJqO3b0l6yd1UZ4g7fnMoymRhQyGi/Ug=;
	b=WFCE209NUjAwACbFyn1x+y/dvRhMnf9b/cE1CliT5bS2HG5S9+j9wBF9ADuD33ce
	EW/NndXWKSjBEJB83/XvdBcfySrEpoWtWvhrpdPnm8P6re7DWbOVKy0oVuGcfs+UqPb
	C2AJVsrEJWh3koG/McgkE44Ow5Rfj2cnjLth6d5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659747052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PydnevNqFvLAJqO3b0l6yd1UZ4g7fnMoymRhQyGi/Ug=;
	b=dMjz7FV7d12fidnhiJ/DApZUVkhOqpxLJEj1HDFTIcBT1vacdtJUArZi9bfkdb9W
	FKIQOyMSncz3HsZbiqStaMXVw1/GafKRY+kjCDrJ6+6vdzQ8FN9d7xdGATljunRrSoI
	ZiQa9tLdXyvcLHzX0PQOXMFzCL1ODeM3DfYS5QTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270a22c3d-c7055d4c-e29f-43f8-90d4-ac26ecfbc814-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fad5923057e77f38977077ab6f048a3c6890c33e7342311e72a6dabc215048c
Date: Sat, 6 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659747052
