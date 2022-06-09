Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B8E7A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 12:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654776359;
	h=To:Subject:From:Message-Id:Date;
	bh=v0OpZq4r4KR3y3FetmKRwCCobgXwPaSiD+ru9u51c2g=;
	b=MDgREbfPGtH1ZC+et0oF/FGOPoQ2bIq1df2mqWNyOK9rOYvXN1KZ8lJCeqlCqsmO
	XeglWrTHxPVtTC6VEjmTjSB7ZbiBObi5pC72Nl0Vyj2MuXt7sho/EhDoJtohCKr7uQI
	/7nTDmi7fqqF9kfoE5htsSsgexLIYY377WYnX+mE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654776359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v0OpZq4r4KR3y3FetmKRwCCobgXwPaSiD+ru9u51c2g=;
	b=dHYZz6flNy9Ff4jPxhIm6bSLpJKC2zYRosl4Rf6i5Z4in3sznWfc5ZrGwHAuyu24
	LoJoG6AxXsqk/8zeLo+rR9Nf+nvB0NTcnuwD1Xj5B9NY9/dL2+QU9GnOT/HCoCWL6nV
	A6N65P3VeRAVONCIOcLPT3K4lZe5Qt2bWwXf9frg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181485b6944-513b0f81-78a3-4990-a963-546fb005a551-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adba1f71cf159a4ca45f7dfa563402c9bb4626dec6cf8d51a0aa8de1ed34176b
Date: Thu, 9 Jun 2022 12:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654776359
