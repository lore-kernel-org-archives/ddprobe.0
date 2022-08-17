Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3373D8B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660734052;
	h=To:Subject:From:Message-Id:Date;
	bh=V39dzOBOigm1GBH06TJPEEdVU4y6QQpaW5tpSNLDXXU=;
	b=SyH8nFntvWgoJNWhghyZXQMHUroKDl+z3MYJ8kh9xvxysrkKhvljaYielMR5kJKZ
	y3JZu31dHx8DaNhCF8K+a9+ZxyhBqK3fViwTN/D0kVbdYs7CtTqhnl4fBLfkgNX3cgW
	Pj+5JqkOe7HFfeCbAU3G/dtB2IaDP4CDF6zUA+mE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660734052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V39dzOBOigm1GBH06TJPEEdVU4y6QQpaW5tpSNLDXXU=;
	b=c03ToE675QK1j3fFTeDD05uJkBAWZnCQaagnWextxGBxOQpXU9ZTVYumZte1/rKf
	3pSAWnM6ssEsdmFnkP4PPWQRqseMJM1dlhNppN7W7ahoBrHIO24eWzjhljEzS52/Gr3
	UttZXshdVGEEr0OPYn0CsWjSJ7g+aFgMoX7kjD0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ab7698c3-2bc1eba9-9771-4ffa-b48c-0336d35d7e65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9c157de2460ebbccb87156ab02973bb0de0e9e76a688e334fc1b5a3293d6fc5
Date: Wed, 17 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660734052
