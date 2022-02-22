Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2A7E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 07:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645515985;
	h=To:Subject:From:Message-Id:Date;
	bh=RFtemaWRFYI8EOKTzkV6WyONpK2c9K7/r5CGt5PUoZ8=;
	b=l3rJ/dl0pMNrHIwiHWwDQu5Sfpo7I1eq4jwjHsXfKFkBkQFy4Rh7c2vcwNHtNflV
	WNLrq7L85fgiW1dO5sHmRYanvqTvgyP4iMnnxhMfAt8q3iHwMXL3/kPuTHtgaMzrwgD
	O9J/oVBSP43xv8Q+heOySs48IvNWEaZFyyDP+InY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645515985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RFtemaWRFYI8EOKTzkV6WyONpK2c9K7/r5CGt5PUoZ8=;
	b=jY7z+t+5n0MCqv6bGMbM+on+49lrFJNZlm0r5w1d3SWKCLRpPuQIBZ/NIdgxjeGV
	avsM+BUwd1y52gtpW1oTHORCo2yABYG/7pJkBCBwqcKIQtBldvjlIrpsMRMEI5nNCxc
	A599wFGfczaZNThP4NbE7Htdcj9VG1cJa/m8IcZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20654fca-54708658-7688-44be-a3f2-d028f713185c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc744ef6746e81703629589e3da0fff9d4ddfa5e8967c184f9244e569f46eee7
Date: Tue, 22 Feb 2022 07:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645515984
