Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7871EA23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647210684;
	h=To:Subject:From:Message-Id:Date;
	bh=RfkD9tU1UT+NGxWE8zQCpe7+V7BvA4F/FB30ZX8Gejg=;
	b=j93bGr4DHoztNYC0WR4tx/LUExHNNBWtifRXVxAu4CGJq3OIShlN+cottF98DCgp
	o9TN4nC0iwxlV0z6FIfksekB0m+Pbfied/o/dCsMMjnmhtQZc8w9izdtT/NcfFCN2N0
	91uWNR5YsWohb5aQNuerJwq6zYk+zOI6QgyNggTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647210684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RfkD9tU1UT+NGxWE8zQCpe7+V7BvA4F/FB30ZX8Gejg=;
	b=ZAkZrhk3iBm2uDuSEiuq0u+tW2AnUERIcX0wp1n1AHBmm4uwtLjvM4LNvJWFseCM
	jCYc14LEfTkUea1/rc1bDfMKQ/AQMghXoZbU3vxDgXp/qSNPhocInZMbz70s1KO9KXb
	g0MrernSS2ix130yk0j23eNMs6NhpdVOpasvoNG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f856861b6-1ebc4751-c6ac-4f5e-825e-f31a4911118d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5b83ffe523c70900263878ee962e7aba0da581ebcc70709c1b64f9718b089cb
Date: Sun, 13 Mar 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647210684
