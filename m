Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5197A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646591484;
	h=To:Subject:From:Message-Id:Date;
	bh=Q2ovFWkzTOjq/n+b/f58g+oAjb4ntMxvkMdIqdRniVE=;
	b=aPc1a4Hf1HWPpKhdYnDO6/HvQ/1KKOzr4+eO26lNIVbgD4j41I112PrlPo0gXk/s
	GsKJg6H24kylPXABH767byZ7SNQyqMs0TA6e2JEOCI4x9VEgDhR7FVbYeDwbd7F1vDp
	1pdygZQemRV0mtXwMG1XKhkjb0P/WSXiOH85zcvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646591484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q2ovFWkzTOjq/n+b/f58g+oAjb4ntMxvkMdIqdRniVE=;
	b=Uup2jYGd/oma8QJ9pBOaFFF64xWMGV0KSop6raSga8O57WrzFCp3U2lZBjqxTNbY
	Dn49b+xvSawfOZyMUGAwEkIXkTxgWKAPHLTUrnCAJjJWcHy3NEETTTqpgqEtYuI9Nh5
	naDsASdNuMbYm2HDwEsqRPoScT1c2HTTJmbiM0sw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60802379-edd2ba69-1ce2-448a-88c5-520fe20d1225-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 897495ad049a520fbe7badb1f18945efc42b21c1a57638a9b2bf95e558d6b61b
Date: Sun, 6 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646591484
