Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C64B18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646926884;
	h=To:Subject:From:Message-Id:Date;
	bh=ulr7UfypQIOVm140Lu5kwS0eOPvpLXLUtZQbx/G7qjM=;
	b=FZOM5+SwrjmXGT0/cSDsV6ATGFOhDUW1eg+Hda42+Zgd/QoOZsbZSo95mWQpDn5L
	/ZsYQcyhetu5UJyb9xeH1w/8DRK1eplpRkRuW+sC0yCuMFqDKtOhZ+G0dOAIlH10EAa
	20p13HUUSkEUlGYIFkGfKfkFQTJ5ubuhmw2j89DU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646926884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ulr7UfypQIOVm140Lu5kwS0eOPvpLXLUtZQbx/G7qjM=;
	b=hvATExSad5coovKQFtGJs4ufyfmJK15HghKWNP7NlhufD8ahYSo3OADG7tHflmWo
	CbKDEkNEkH+el0g1ZBwNWPgPxQWEOxlDJvb87bdevb/gzLK/hZhC6rEylQEmCcILbDW
	2teBtFdVvDVxd3feAgvtnBG5WyVRA2UNrx9AFwnE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f747def88-836effc0-d3b0-4643-8d67-dbce2f1e2b75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f7c8c2b093da4c2d34aa61ebe2ac89d02ed55e1e7626854f30153a068533e58
Date: Thu, 10 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646926884
