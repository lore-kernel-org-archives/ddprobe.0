Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980EF369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645851685;
	h=To:Subject:From:Message-Id:Date;
	bh=0a2ZcPQ4xcmBI3pgq5LyAiYrVeaWauCSqsMKYSx/f8c=;
	b=Yy/kFIOon22p7IajuYYZd6BUvsDvPC5wBn26PEeHoqYXumra48B6DEwHUgS6rRjD
	GvQYyugOp2bGLrvs12UJD/vC/PJSloa85uGlvHsUzgvwMQ7iUteVSodnnls/TTZxsP6
	7BC61VHQoaIw2FMYMCmOCz1WvapbWtEZynlaPdEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645851685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0a2ZcPQ4xcmBI3pgq5LyAiYrVeaWauCSqsMKYSx/f8c=;
	b=HlbgGUUXwYb2o3vZi98Nw01ff1zRu5KJTXMc9YXZe3OAjXnDW6tOQGirn7TRSFGb
	7UW71/eXMKYoL+WqztBq6jkO+E9NwhRlZSYppD2AzQFXanOt5I6WhSQwJZ2yzoZdy/W
	Wcdm2Q6XLOCdOUkIJJpumEL2FYkV52hMG7h7gaC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3467af9d-7e430ee0-a449-4825-bc3e-22661999227e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f60e46a051ef454e698e5eb77c2ff5c9bab3480d0c5384bcb24d14ff457bf85
Date: Sat, 26 Feb 2022 05:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645851684
