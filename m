Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCE4621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658804212;
	h=To:Subject:From:Message-Id:Date;
	bh=DNvt8GClEN7wt+LnaB391KlN2pwAFlodg53SZAENmR8=;
	b=RYukWu4x/dm4lKjFP9xSEeRkjt7UtZ06+E+HobikOE0W6N6Gkk/3wAQq6xB84A/f
	eXXrCnLARUjtEF0yEViiSiccPpVkiwBXM/+wW6OWpSMTo5SSi4Ij8dlGfO14670UqzG
	cTUMym00+aloAlly5q2L8Ec8JDpsPi5YQ5iNfvgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658804212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DNvt8GClEN7wt+LnaB391KlN2pwAFlodg53SZAENmR8=;
	b=ZBjTpwnRMVvRmD7IDii0DoP6QQHE8/UjUKGig4IKtCbx81AzZ6nzdxbHHPJzlTt8
	lHY8yYs8uOnnt113I/9RzpAZIJmHgdzXu02/F1NxfU+HeZJrRXxQ9Xr6+q347OVMV7Y
	z87yj7CdeiKnD3d+WsU1STy2/a10XF7fMOHKfvWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182386f924a-29e6b089-23e6-4e80-84aa-b61b87e79349-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 374e3a3f2afe8f18501a042011b85d9a5cf1f2ccefb5dfd69a6203e76054c5a9
Date: Tue, 26 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658804212
