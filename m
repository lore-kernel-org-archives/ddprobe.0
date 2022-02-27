Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F33E323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 13:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645967485;
	h=To:Subject:From:Message-Id:Date;
	bh=EgI5OUYfbWdTUdFOqkYKHvfw34D7IVqnKC2AFo3H8Tc=;
	b=dteA8xcoc6WNfZqu7ywj88lnAmJEYx98Hvj1iXoWikBVBP7vbCTD9JndhDGdmEzi
	X17Gri+BTH1ypwHDZJg2HX9lT586AOnbZ8oiL+66svDpA/7oJT2R3NangDTz8e/hsIs
	DQECRb0QXKkOJzzkIXA2WK29FzjZZkZbp/1MqAqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645967485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EgI5OUYfbWdTUdFOqkYKHvfw34D7IVqnKC2AFo3H8Tc=;
	b=dHGgSDGS75WJoyNTY44ZmdE+vjYTxsh2cRQ/0vml7exEh04wCbwt4jF0t3Q5Z+Lt
	6tEbeJqYU/Jb+npeZWWwu8V1/He6+op7wjOMR+GqmelewFlaRCaouVWELLWCfwxodd1
	Azm/+dBkcklPcLCGF/dAMU+Lf5CjQYPO8WdS2gaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b4ea7ad-c7f1a046-d389-4b30-b09f-af8b93485052-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4395db21733cd8b0261c22d4991d94c1717ef9689d619bf7d1ef8092f234184
Date: Sun, 27 Feb 2022 13:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645967484
