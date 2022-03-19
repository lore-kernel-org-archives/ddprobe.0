Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A053318D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647654685;
	h=To:Subject:From:Message-Id:Date;
	bh=/YIMbaXZE8tBUyx43yoTwo+wlxIyFcwCOazpONI4dzQ=;
	b=Iw2IKPQ+YYNE49S3/JENwjFCtOUNlA5Z2x8sJStlXthPaz/nGcsISAcjhRUxnrlF
	pqDn9cXGdv2nE/tGyeLbznWdOxQgE9RwfmPWgM57BNc0C4UViUcP6zS+uSfLiCwvzCn
	7J0LBor2jcsfP3NHGCDs7LHU0scGVvlH14xMRbp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647654685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/YIMbaXZE8tBUyx43yoTwo+wlxIyFcwCOazpONI4dzQ=;
	b=eSwgMBETu2/Edjt+K0TgDhKJAZpHiMvnf3ZyeW+8ug/rvAIoG5D0eEoIyNoHQ8VR
	meRS0HGWhglShrT5l9ypUXsOtEoxPf06bTnurzs1WbZqf7VS9j3kGYG/4hWKq/lGSso
	62uf6Jj8lcyZ3PAdpEaDH6gXpaiB3nCvQnlfoioU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9fdf4846-b6a0cd15-9bab-49e2-8346-b7dfc2c744d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 822e465687bcaa95866fb420d24ee9d4a47c6649fea1402e194c47a7fecc1fac
Date: Sat, 19 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647654684
