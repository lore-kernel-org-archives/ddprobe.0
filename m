Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDEA3187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645017685;
	h=To:Subject:From:Message-Id:Date;
	bh=13MNaPESPZWoNLyzoMlIqN9rTc0A2+dvD8LtM8OLMZY=;
	b=j7URUCeXVGrNUq2tOQJBVD9BPCXB1zIXidK7pqj6AG5swc7kVT+7rLn1IDynsQAf
	WEYCzHn67jpAj92ea5h0hGhb/n2q4k6o9WJH66Nk30y8xB4QJhYM4B1/ursEsfKcdVn
	43xvz6EuMmumAoMdQRm0Ry0q0FuetPdLQ2lU1k+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645017685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=13MNaPESPZWoNLyzoMlIqN9rTc0A2+dvD8LtM8OLMZY=;
	b=X4TdEzYXGplNtcGwZ/oMi7ZcWRiQx8UIorCKYoWDPd3A8gQ4bzCqrXLvD1Q8+5J9
	2Ajc39/Gp5BzwuAJcpLa6ooxfImgvh4JtDFciHtCW7BXOJMWTZjuQYDh5n2SnEStvF1
	3ByqqrUX5q4SDnsDCYj36QqArPTAJzomGuiGa898=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02b1db3d-c3a33f1c-1af7-465f-916b-60a71bbcd0b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33000f9572f122127e1018a6565f39c1d12f171e00991c5dc52102cf11bb584e
Date: Wed, 16 Feb 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645017684
