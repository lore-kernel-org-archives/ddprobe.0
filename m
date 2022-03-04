Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708EE7E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646358984;
	h=To:Subject:From:Message-Id:Date;
	bh=GodbTG9aCkjJbPHF/GCpsBsokEGF6M7tpJHamJAntqY=;
	b=lgLmCZrrYmyHgkED14aLAIepu6PQHbzh7Wd5/yOGMw6tGljK2rcP42rprIEqoXPw
	XIOy0FByH7zTLMAm71Sz5NV8wIa6mNjSuueN4pdfdXIyfIPwgaKu2QLi3X7lQDI48Kw
	s51Ay3mugIjHYNeNOqVGoWOl3XIwIxFKYhpA6odY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646358984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GodbTG9aCkjJbPHF/GCpsBsokEGF6M7tpJHamJAntqY=;
	b=VdJW2oSO7sUrE5DD++Kahxh4wbgn+hMyX401o311dvrzAl1Yqz5LzMDmQxu1vNOe
	+AVlCE1n2Y6aGntVdU0OGQ1c4yUjTuNt4p5vkNvP+jRz0nEtFAqomKGQqolXG5bfO3d
	34EizkYqY7t2xMPguccRN9GLx4z0U771t7Jep0WM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52a47824-23334aec-107f-46b2-91ea-d28f072554a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de37ee0d494b416bf7e16a758d89bee431d2406ab547fde3501653510f2a0a0e
Date: Fri, 4 Mar 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646358984
