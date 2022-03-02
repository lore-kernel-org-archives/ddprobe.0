Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69B020E9
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646181084;
	h=To:Subject:From:Message-Id:Date;
	bh=hrPe8Xhj8i8ihquHipHmEDpu/rUjOuDQA9/3njNww4A=;
	b=ObUbs6gbjFNS3UauX16OSmV4Kz8fXNtjDSlgByGYqXff9Q5rqdYa//QioqW8M7X6
	fjOKja/LaDOM4ahPQGpK8KpHk/msozbrnRRFW0coVY0y+lakWH1Sto1RUuj1ywVlAkO
	U9WfjzHxXeh2ZVr9xIsf5wn4G7xSmvEAnVQWzgeA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646181084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hrPe8Xhj8i8ihquHipHmEDpu/rUjOuDQA9/3njNww4A=;
	b=giMoLp3JA1Bj4jI0qHvnJLmGUYexanb4uXLnIdY00jooT2Ie6PlcF2CosN1cMTso
	Fz7zwI7otTrC1Co1XHAtpuIIP9/+332sfITEeoZJ4aHTVqBfwc4amTkEqouXFs6X/w/
	BkASwjYHon1IFhi4+6sJ3tNu3Ho2NZB1OLvhT6Tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4809ee6b-64d8af5d-edf1-41bf-8bad-47ae074c3bf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06673cb5a4ac60a971ba78d149025999d8a87f1c91ca4ec147a8c8ea5310e9c2
Date: Wed, 2 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646181084
