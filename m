Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED1F1C29
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659016253;
	h=To:Subject:From:Message-Id:Date;
	bh=E+b8As568pcg7OYXB+x2g6P9FQWu+z++bxRslkR8xqE=;
	b=Gr/QxxFSlUcqymXR72AkLMsej8/HKSQKJiCVOXgT79F8DyalXJU/Bbz8YB16oAnA
	7+XI2d1mXIdH9Tc3ljxI0VZiPpam8dQvi5s9TJiz8NtPn3r6GBx7VriI9CsCYeVeZYD
	a+X/n9axUwWcoBLgBjcF/O1WVB1K2bcTg3qxtL8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659016253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E+b8As568pcg7OYXB+x2g6P9FQWu+z++bxRslkR8xqE=;
	b=KQZLJm0512grCk5r+KxaAZIFoYEh1LD5I4q7LIuq7y1x2VwajJzbV/pBT+vfM+un
	ydNReXn2wa+sB0C6xYVLgxZfM4EV7Z8rDCacElxpU/wZm0GVRQXcb9IBMtLXlUIVsK1
	B8tcbxAclpAtvF/EO2Xh6jv2gVJUmOovmYBcclso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245130c81-44838373-eadd-4978-9017-91b4db3ea45c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2914f60d2e46b2a8f33316b75fc00508ecc4bd57d915b5ea6b7b8b1763499f7d
Date: Thu, 28 Jul 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659016252
