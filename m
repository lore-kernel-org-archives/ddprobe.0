Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54DD1FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647335485;
	h=To:Subject:From:Message-Id:Date;
	bh=CFEaDOCmCBW88brGPY+JYBm3roPuxQLr7TVfsAuvQ0I=;
	b=HuqzwduvJVubhBUWCsQyhqrJnRQ0iv7/iAGaXis2ossCK10mRMz2Jzb13l9GMb3/
	orSTLD+MS6PuZQZQ4RZEeIqE6qTqWqe/04dROabku0+Oqt/XQp/Nb6CKRy94nr6UPl5
	IShgxz3gWU6xmX+stR1nU1WLSw92UqpCEBYOgMac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647335485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CFEaDOCmCBW88brGPY+JYBm3roPuxQLr7TVfsAuvQ0I=;
	b=VIpVX0MrVuzJF9kBm+Zbb8SXLr7sd/2ia7R+xEzqhxviT0pn7OMZQrwvVKKuJ0+t
	mRSKyfKA+q/GHzZsxurjJf9C2ZHnmBbX3HKBxQVLPZvfZQOGN06KumlYXwPjC6U2IX4
	OJQF6FV7vndiDDc28UtiHy43qMIGTAK2oW2CJoII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8cd8ada0-aabc5448-e9f0-44d0-a4fa-18958ec418f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1381bd49ab7503604f7768ab8336277bef38cf6473af0629f8437b5a8e71f65c
Date: Tue, 15 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647335484
