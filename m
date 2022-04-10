Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5D8EA1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 11:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649588698;
	h=To:Subject:From:Message-Id:Date;
	bh=R/bsT3QY2opTtLFaieJcsf6ZSzHSX3SBUBOrGCtjfZ8=;
	b=NQ8Rk+CfcXJlI4j7yo9JJfXMTBhEiXvwBx7y3+jmYVPwkN1f+RqJB0Ol8omFrGjv
	CwZM4DHxIiK7FDG+nM2A1oDAVWc2HVcTgYrJ6u5IYCPQ9Psh9HODvSCyiJoM4nb0BDK
	dKsXPppxAbW+wK0C9zqqyF3l5WmxBKUEAor8ZQ40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649588698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R/bsT3QY2opTtLFaieJcsf6ZSzHSX3SBUBOrGCtjfZ8=;
	b=T1q8BxxhvkxEVVdZWTgLb/eaEkCuccYsQyQD9NFTxWfBQox54q85VuNlSeu6v64c
	80cSZTt3/gIdENYLpMd+QzKXWyuOwO5cmdi4LrMmQFG631W10toh3Z+4Ny9ENqeWn0C
	x6Gxq3VZch1FA+PrqljPL6lMwGnsfrtFKHeYq918=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801325fccb-0d47b88b-4fe4-46a6-bb0a-a87f3cec71ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2bb56e86662176e62a5181bf84710e2a1e4dbfe7a90a84e4f6d1453e445fb17
Date: Sun, 10 Apr 2022 11:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649588698
