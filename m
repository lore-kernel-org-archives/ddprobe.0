Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6508910EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645758084;
	h=To:Subject:From:Message-Id:Date;
	bh=SRSZCC4erdZVuT92hETBpIax9WIvCELqkERbpn4BLQA=;
	b=Wg5IJBuxna5BzDh9T4RJyGWlARFcqGS3Wtvz9xY8AzY14P2IT3s6i1BpAHJriXNW
	NZe8YVAieC78tqg4b3AFNGsWRaj1ItK/waJ+d+22GSxEaz3lyaEVtO+qLT1/fmv7Rzv
	It7AC1UqGFW93slh76EXagftQx4SFZ9eDmt9e6gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645758084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SRSZCC4erdZVuT92hETBpIax9WIvCELqkERbpn4BLQA=;
	b=PuFFHEV0LlXFdwQUPwHX4n9pZmVX0Gc2gytaHlQJ+kFcTWh9ybP/RUe422l9m1oX
	qndygWq5HqgIZrHmjX6e6SFTMnvesqTJSePiJ9BnxSmurK20nPujhom92xSdfHrQ7Rh
	FdO4wx4T8EK7HIMGiNsw5uWfNu5grJNAJLS8l1HU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ed3769e-c6c0df48-5dd3-41d6-b1df-b812ccde8e02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9afbca4404be96ff82dda086256c0cae66cd45363b90aca9f6aaaad5faa0892
Date: Fri, 25 Feb 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645758084
