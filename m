Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A044617CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646167284;
	h=To:Subject:From:Message-Id:Date;
	bh=H0w+8c7g0eyTIX0hjVRItS+AbLDbZV7lK0fR0tLgajo=;
	b=b1nONhqUDr/j72Qndl94i8QG9Oi4LEdn5+/lDd6Tr50ZXpclhd84491OVfPgRZL0
	FT+RJmemSMgMCQA6IX/bJpbdxFAkATobU+4MppGr6ADKYKgQm8fiEVvCtDcHKfcnORA
	5tFrf4HKG8MGd+jronpfu12S6fWYVVhvYTXW8x9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646167284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H0w+8c7g0eyTIX0hjVRItS+AbLDbZV7lK0fR0tLgajo=;
	b=ii7Jljyj5L4kFBwdxiWKdzDs6ZEMyU4GOGNe6H/cUe277FGVtGS5WFRBz7gx4JIA
	RJM3sbY9HYSvU9ln4t/cY5H8BoaVlwAJvv+yioNuKynd0mGah9x1BZSOiAu8lDQuIx8
	48X4q3XyTXF0p1RGSlGsvJwXAZwIFT1IKFLOR2JM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f47375bf6-ec340fd0-16df-46ae-8d40-c2a6843e3cd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d62c7f5d35fa7b4f4e3f6c4ed36533102004dcc3fb3427325e3abdff6fdb99eb
Date: Tue, 1 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646167284
