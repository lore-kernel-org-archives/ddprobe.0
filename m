Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766333B29
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645111584;
	h=To:Subject:From:Message-Id:Date;
	bh=5cfQYA8EA1VG1xvsPznKni17dwX5byI0zPilaN3eXsU=;
	b=ALrGMKYHqf+Uy2Jiit6iXyfFovWvUGpt1j2eKHz/yY4pnPw06GbfFBJ8NR0RqXhF
	cJ+hh41ibBx+6tPL4uCfOddxL6cwfFgrhGbLIowUq1tkDWGgNNoMO/aYrEGvhMAU+0N
	BhcP1XORPnlr8wprhPp5Y00CvPnI4bS+Nfk+ywmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645111584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5cfQYA8EA1VG1xvsPznKni17dwX5byI0zPilaN3eXsU=;
	b=CZkjXM92Xg1ulvWRQ1EvSl/fUZkNDeLe5TArplco4DQ6Rye30+IgaR/ER4fvcRtV
	t2W879Mi9U5PTSapnUKRa5dIZ1pvvgXxrMrcahUnNf9iwBqgc7dB7diLRyqiv5pDG5D
	7DBPbMAi2ujC4/T95VISygRW51z3nK/JjtK8G/RM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f084aa824-fd987913-47cb-47f2-b879-7b9a148de67b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 891be53698ccd396ba042f1dc89aaccfff2cc48983d4c594bfb745014c97e73d
Date: Thu, 17 Feb 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645111584
