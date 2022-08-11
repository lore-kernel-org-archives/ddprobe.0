Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85851198
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660198252;
	h=To:Subject:From:Message-Id:Date;
	bh=oYc0pjORYnEarKE7THMw0XSvjbjqHwj+KWILRXK2E+8=;
	b=Y74HER4H7dGdbFR73StDAT00joO7nfZM2YlP9t19GXs5+buc2wBtKtF0Es2XxGH7
	ljb/Gs206c1JDAMVIqT5rqDdOpXN3Ewh5u5OZf5OzIxVmH6YhbnC0ZMeX5lnf9D/X29
	EHSSswVeFBlV9oS0fHp6xWi8Zfrd51psa9NrsygA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660198252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oYc0pjORYnEarKE7THMw0XSvjbjqHwj+KWILRXK2E+8=;
	b=P2PYCuF86I1i6rtAxhVXVvz35EGfk57ZLgD6G1185lZMMgNZ02MwKXb3pZ0535qG
	vhRi0jZZNEA60SuuulG0r/3xFIFZ6NqAjovy6JjesqNZYOpKtD3Nu0trsiXK05m8l/a
	aMdnLFuEK4jHFBMbISacGPQbLdZjXax66FTeEcI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b86f01a-639fe6c2-4857-4141-9108-d5f216a23720-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3821ccec314055805cd8cd54f45c9e2f1bddbb81f3c3f15f48bcbe01b4eb2f09
Date: Thu, 11 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660198252
