Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A854536A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647045985;
	h=To:Subject:From:Message-Id:Date;
	bh=ylCHkDL+EcJwU3hZ9NONu5s4k2QnwadfhldQuhF/JtI=;
	b=IIIo2HZ9nxGCVl4mwXmTkjHrUATqLVfrF2pDWHCN3FG2BMIBiUvXrsMZF71TBJ5E
	KCJqtwn3OUnevt2tKleLXE2mZS3bQYKQhXkuYVUR/fg8MVkAT/j8vLHVQ7KVvlV+qQI
	rrXAE99k3mM2hwAkRybN+8RPwSTFftntvixd3SFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647045985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ylCHkDL+EcJwU3hZ9NONu5s4k2QnwadfhldQuhF/JtI=;
	b=dHkyLyIuCRzMKtpnxGF9argrzWfQJxWXuPsTZpouNgx5+oEPoW8olqEUw3wzR7D0
	jch990g2KKSi/z/GgS1y1IZwY0gIuNXEoEdGWd/2TZ9s5LfDwCHK8lHrHLtBw6n6Ssp
	jftvqxl6NHDgqwMR4owBAYSS4njJ/XUOZYetplAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b974212-e0d2904e-4ed9-4e77-bb7a-dae239f85e83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03af84e2beab1240fbcecfb463506330bb9f343cb817b12f440902cc7c69c01c
Date: Sat, 12 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647045984
