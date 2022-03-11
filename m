Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE1C5CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647026485;
	h=To:Subject:From:Message-Id:Date;
	bh=F1y5EpgqwQGq5u7xRL6FHCV/E51j0PUP6a2gN3hvs1U=;
	b=OO5WpMX9kXDj/1QVEgCVlG3xFP+1oudmfLxviazasV9ID0gU2+RJRU4KwbkByiB5
	llbYcUcbNbrq2od16FoZ2lqQ7jNjvhjdPvLewlgXQz2FK6K2fZCoAV4IKN2WF/etOqQ
	0w1i1k5wAKASaN/tAloCWd3oxTIMeFiwXzD1rsj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647026485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F1y5EpgqwQGq5u7xRL6FHCV/E51j0PUP6a2gN3hvs1U=;
	b=b6WfvQ60WcnnbAzSorspCT0uPO4+k4BiOxq3ju+ZYefAXyxjKp6hneLjE2WhPMo5
	MUt/MMwEaVFnjbpOTAwuZ9082r48uI4VFrAihellQ9sig/aaSj3P1o3G+splFVQSi25
	wscN1mva/prfGMWd7vt3E9kUOSALZBJ+PBjfxolU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a6db605-70d3bbd6-6954-40fd-b5e4-6da16d2058e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cca1dcd299571d32fac8144e211154c8bd1fa1e742e887a343a7c07837b4ca6
Date: Fri, 11 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647026484
