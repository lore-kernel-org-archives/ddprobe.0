Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C457A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645992984;
	h=To:Subject:From:Message-Id:Date;
	bh=2mzLuAwCqwSXBgZSqGB8m602Hg1Vh1THCvJP0gZtRGI=;
	b=Z28P9iWGmLiTf/8KxAaT8w7gZ1uQm8xOg0W7sZxvonVr20OwbM1lwPwGc+iNC+5X
	oWkYnt84PYuP8JCcz3KTsbEJFSIdBSadK+alLgbXvvmnGMz8fjkEins7b+6ryyEhonG
	4HDprwE0utNginwni8N3Yjg/Mc+Fx1Q6S1T3nPAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645992984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2mzLuAwCqwSXBgZSqGB8m602Hg1Vh1THCvJP0gZtRGI=;
	b=VBBj1bluMheb6enGxqHDlHLU2P7lyU7fh+zSiXN6NQERw3cjWQhxXk5rilDb5znp
	M5Og5r7Zp0ZYDDhWNOOjMRik4d9u+fjyWzYVWsZE01ynRXht7lLShJ9iKRkuK7qHj0Q
	qdoGk5qyh3u6Yxr6C1b6eE/I1+jbydaHgKnZK6fQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cd3c0c3-8bb8a54d-e885-4932-a835-5bf6e1013a74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9e978d0605d764e33770d88a3a4408fd8db3c905635d2e98b03a7d880b0fd0f
Date: Sun, 27 Feb 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645992984
