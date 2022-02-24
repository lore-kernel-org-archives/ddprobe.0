Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4606BA3C
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 12:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645705884;
	h=To:Subject:From:Message-Id:Date;
	bh=oR9pLvGXZPq8wpJ4SBJCYXTV3+3iyaOy9efmYZR8oxg=;
	b=IJbCFgHkEKgS7/+aXncIXnog32SjNoYS+WhnOkcaASMzm3UPqv88tF6nZndDC567
	XHm3qGjzGUnVS5yFvZXmT1mcQubncrc5bkbpZUS1KAPxgrgcc2eKJRRwcx58roOU0+a
	fEClE5WMLcy0k5jRNdIkKTUrVv/fZpskWesHFy+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645705884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oR9pLvGXZPq8wpJ4SBJCYXTV3+3iyaOy9efmYZR8oxg=;
	b=er7wj8RC24dvHOEKoTJkMWpqGN4oO4oeZ5aVskF9f9aGSI14Aq00dZ6b7gu5DBlX
	iF+zCLCEPtf9jQA/LxQ0VvR+KhWD+5ovPhHlI83eeIjlSAryetHGZCoD34eiKYMG7Hl
	vKyLO7poflrnlsmzB40QIvc7hoxAj1rzxPZkWySg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2bb6f43d-e0981f12-e886-4f0d-987c-ad649aab30f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9667fba29b24da3e39e513dfb49f1de04b4c0db3c8b8c010fc665008fa43362d
Date: Thu, 24 Feb 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645705884
