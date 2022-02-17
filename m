Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BE73B2E
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645073185;
	h=To:Subject:From:Message-Id:Date;
	bh=+LbHBgQ9f8sQh08dL0MsN63lOuuyNDXGrhL6rmDcfHQ=;
	b=idMtInZTStss/QKsrsX1FZo0GlGgCI223pN0GEOyuYObqXqeFNLawH7aFKYjQBml
	75bpPXULhnNiT3W9Qcr0/ahNC8noDIsnL5iq/NxS7yvzw7t04UuE8GFNuhHB5O4YGTB
	daO2moWZl/4kRx9HKIIqbd7DXCzWgNweg37nNvn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645073185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+LbHBgQ9f8sQh08dL0MsN63lOuuyNDXGrhL6rmDcfHQ=;
	b=eGjFx/892hn63W9NiwxZz9z5aEeAaLoHYPpAu4cO/JtzgCbwZ/5ozwP6GOwjMWoI
	laK7fnDUNiDyJj9ZrJdgszxJeWwU7mwJQzaqqs8QX1OSfSYGuHIqEhgk4QX5PTwIQBh
	+aoLuDOEbphn+mBDbozL+maPqb0He3U8Qsv/d1M4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0600b7ff-3adac265-6fa1-49b0-9c88-e811778c35df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3da675095821020afc621104087ae2d29dc50f380008ee505806bc79ce7b7257
Date: Thu, 17 Feb 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645073184
