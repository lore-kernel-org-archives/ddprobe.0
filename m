Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A00C2563
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657289212;
	h=To:Subject:From:Message-Id:Date;
	bh=WN5WLwmPwuP3GmNH1lPyV9SxsN/ApOo6g+SJhLAm6nY=;
	b=cQ5l1XCqJWYIWI8o6blNaADIvEIPL/dNcSRJ21R+FWHVzme2FlUjOhH485RGhFCw
	k6QuoqWBfOwxP4rs/G/Dn51+No/4HGKv7Hf4FPESyxSoWt/SlLupaAvYAptViaXFcai
	k8+35+nyjOEoXiz7XFW3GSxtzH3/gbbsqpDpRe1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657289212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WN5WLwmPwuP3GmNH1lPyV9SxsN/ApOo6g+SJhLAm6nY=;
	b=QVbXvwrRezle73TJIpO89XhHUMlFaj9NJ+oqK4RnB6dAw7VeNUqzCQY0kNSopx/n
	G3SzwR+6U8uUX6CXIT8wCsnNCbdL+d4ow9hrrQ3FC3P1tkYTnMnMCKKXXWKFm3gPiqM
	WYSwNpySXW2BtcBGkLag78di9nzy6srnJth85jvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de2281a9-99cc1b98-bdcb-4bde-80e7-b49598419095-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c9d1139c2d9fda4f7d71adeaae1268427aaecae5c0b4fdb31351e37578c1bfb
Date: Fri, 8 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657289212
