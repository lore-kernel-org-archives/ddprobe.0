Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE423D6A
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645125985;
	h=To:Subject:From:Message-Id:Date;
	bh=DegOWyc4d6C7gtxxiAhBbYMTvhPRrhk/BSjc5Nzz5WM=;
	b=LZmMth9Mh8MfNrX4HXDl3JsRnsLPN+KSYJIn65Fhc0aiMFA6ZYEee+lfkOcrk0CQ
	p8Ch2gwEjdiXImp8xjhIJ4u8JBG4Jb+dHjklfodAHYHMiMRYDbhUcPV9wJmJA36x5uO
	je9Pn0l4kGnNCLHIxhHo5npuYhnfFHKOLp9iWilM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645125985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DegOWyc4d6C7gtxxiAhBbYMTvhPRrhk/BSjc5Nzz5WM=;
	b=fRwrHp7ioCUjGyew9dI6eAYtcfjEtM0Nkkm9KtwMIKygl688ZUFopfH+zyPpoPoc
	xgQiVg5UYJKogK181RT/PtMIDiL1TMqA5fBvzmiwhxNuBd/pimnMM+VCSPmFYaXL9B9
	W3KAHptTNCqfnw4TwKtuN6eh05tc6WApxUZ+1oO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f092661e6-603e8ee8-347c-4260-b600-45da2edadf1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af4604b9b7f3d026072a1eb8cffdde756d0856e256c86ebc712a678f83abe2a3
Date: Thu, 17 Feb 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645125984
