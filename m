Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F72E7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645548985;
	h=To:Subject:From:Message-Id:Date;
	bh=pF6Z4qMwXbyWe/yuVywHoAY3iQObtHcWBWZ8f8tzjNI=;
	b=XEVu4ZKxPpt3KwI9cG7qH+/MnFmy6JZQSKSJvPPVrUfvmvngXP4cRM06jTsEVJM4
	8ejOGM079U9ht76XtegdmuL1ZMk53r44fu3KGUMe35EkiNEvb9OU5YLGvVfP39494xI
	RK8Z4h3wGwcL6SozKtGv+AbKsyrohBCFBWpwUAYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645548985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pF6Z4qMwXbyWe/yuVywHoAY3iQObtHcWBWZ8f8tzjNI=;
	b=isMQMW5Ozf6w3ZHql0QGPsr2j2Qg8mWA5S9tHFIG1UHsB/RIt37riLodp3xhrz9P
	qa9seBGQo7/s21rv2qj2Rj2NePBWd31AqYr/WcJylo2Y571Eo69dIXi+b/k/VBGCPF3
	FRIZWP04/Nw4O0oJrth7AlWzaVWZj6FLOqZN6U/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f225cd9fa-fa3cf639-8580-4794-a0ae-2b2e84a1efd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42fea65785269df56d85a5316a16026d29d6f949014fd7cda720394da0a6f487
Date: Tue, 22 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645548984
