Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0ED7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645655784;
	h=To:Subject:From:Message-Id:Date;
	bh=eMsPNzjZL2JoBXtumBEaFdjCNDOBDbaZ2C+qFOkY7CE=;
	b=PUz/eVQMjlJLDcbmNLHmBOoa39rONcdqsbeH0FnBG36ZvMl+SuD/Y/FkcFbSDjCZ
	5AvD4lyMpQ0X4lNBnQ61gikzOjKzK1jDcxQHVbg78zesbD6Ukjr1wDmF9UPjuYLz/Xn
	O1pL6DDyqdDkJeOkyPvwhPJ2y5+WjcnZFkZYIXuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645655784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eMsPNzjZL2JoBXtumBEaFdjCNDOBDbaZ2C+qFOkY7CE=;
	b=AAZsuqUPnm1gxccm/VHs9An3LAw09+DXN5EosqOgx2PWi3cEaoxupkxoe4r0lq9w
	Z/gbN93NH2iYLdEb8XzJyX4vkYKtM3TjOfd9VXP/YgBY73/pAOtBRJvqNp8Z2D7d3v2
	tpSvTutB8UIkclfZq9kDLCchmX8GUNsnx6SmzaN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28ba7d64-61997ffc-6b97-4266-b72f-bbc9040a35f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a88179cca88d2c4ebd43eda7d3ec01fac2bb388d15ae885178675240456d80d2
Date: Wed, 23 Feb 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645655784
