Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E817F9
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 08:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648456198;
	h=To:Subject:From:Message-Id:Date;
	bh=dUy/9/YhDTqlHXIQYncvrIQZpd9mAudbYC3FXdcsseM=;
	b=PtwjqwgWNTsBBrO6Gix5nGeW3vxTFVEw9s3DO/YIM1HevGP4vbTiFItERhffvSnX
	hsYUGaL4XDD/TkZFNDNnzaX4oG2cPnzDdVtNOtWvamU5C0EeNR31Qfuv9/cSu9l5pYC
	FctbcMxk3q0j1CLhObeEosDQBs1IdHLP/iUecrQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648456198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dUy/9/YhDTqlHXIQYncvrIQZpd9mAudbYC3FXdcsseM=;
	b=HCsj8hp0X6OChSP7IGnsTO8CPy9RXcFVqSNwjnDAqFbYxPDrU7PA7LqUb6fkx0JC
	7GFgXmwMynFqn8Brbr0yyXh1+6v0CapvL7/JsV7JN60xroTPFQoHb1aVKmH5e8R+xFQ
	/5+cnJuY3SWsmxQihL5Tku2HCE3jWV5IHvcJIn6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcfa5689a-1d455bac-f19b-4b3c-9b60-102e5a07c2fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21ea3e7cc607423c9844bef854aeadc7b7aaf3cc3c12076cfe46281212c09fe5
Date: Mon, 28 Mar 2022 08:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648456198
