Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1199DA41
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 19:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650311818;
	h=To:Subject:From:Message-Id:Date;
	bh=Eb7HLjbltHE52qojbJXrbSoCbz/8pS5auEaLOI7nR+c=;
	b=ihsb4mi/dFdWp5Oy1Dttzp6xCQMHfqyp3P/RdSr3E7AarMxe9qvONzKvr6pUfJyD
	fMbtdyymo8ufY57SX0LAcQYH2eZ4owmjL2DJLOgBLAzQMf1DAGdiSwkKt1EGQ5AL5/3
	mWQdFMaJTl6Ki2jd3Y3nAIpMtiUleX6L3liYmaT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650311818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eb7HLjbltHE52qojbJXrbSoCbz/8pS5auEaLOI7nR+c=;
	b=HTLmOhsYbnFNywqRwCxTZRfmlFnqVtBP7bBOA1p/u30FFUxDwNv3/Fq3rH8FgMGz
	Fy+hAIHJLrKsobE99FDwkNqqRxYrh6U1F0jWuPZRUrj/k2AjGUkaP5dva6ZHRvSJVoq
	ugvnqDfP7bYyqsGe0BcIekZuMNWoPINbEkF6ONyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803e3fec35-c5c78760-69bf-4651-a807-1c886b7e7d3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7c6c974d45ea50b1ceb3da3f9a642b0198f04b2c62c6bce7e5cfe138e469db9
Date: Mon, 18 Apr 2022 19:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650311818
