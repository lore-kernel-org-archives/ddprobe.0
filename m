Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652182F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646782584;
	h=To:Subject:From:Message-Id:Date;
	bh=FsM8NZPvfBHDnLVCnF+qc2nftinO3sO5Q6sUnLlKXIs=;
	b=WAv0A6f1FA/bd8yFW1tOdZSZ2Z2zBslkSlC8o8/h9+691xCxo+ye+ggTgypAaqER
	kHCAbUuuNvauFxgh+Q5m7Bf0c4w/fG24lAYuuwjqWapWHVhNQXX+ahkn7SbJBzCFvPb
	wryNrAJGlX2bWs8/APYECFQxu36Mx1WGSFE+KlZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646782584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FsM8NZPvfBHDnLVCnF+qc2nftinO3sO5Q6sUnLlKXIs=;
	b=dukYRIZwlsweT3IpmZ71k7NFwkJiWRUCVcVyRRpXo1j2/wIU+MBTxX+AhhHApMGC
	KEn6VX2dZYk7rY8nNMbutqsMW1jXI6s08asADc9OEwWMLxGcLFoauc4CZXIDGNJOrI+
	SJnRNi5bm0hSSlEQryTrSorjQpLjF7bvNj4HetjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6be417ae-9f7e0e22-a3b0-4262-bc49-e79995c04ac1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8242191b653efafbacdcad806ff6e48afd6d9acb46b43e295bd02448f1eb32a
Date: Tue, 8 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646782584
