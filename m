Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D3D4AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646758584;
	h=To:Subject:From:Message-Id:Date;
	bh=Gtfz8u8XGrb8acOYAZhXHNw4QELqh0P/uFbz7uKE1dY=;
	b=WwL7Gam98X0UpYrn5jC2nlXNEgLzXrhoeQoVYNSvUyNex66TBpxbjy88mwEEmnNL
	OVhfuahX0Rx9Po94z1SE4L9zUpNhqvzfFno+iGemkQRJk7NYxixc+ULICL2dsdJFQhI
	BcK0OCDOBjVoiE9/CNR+cQf5SmDILRFYZLUQ8vRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646758584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gtfz8u8XGrb8acOYAZhXHNw4QELqh0P/uFbz7uKE1dY=;
	b=TRXwOkcJ5tP7Uf9FCOk6D3k+QIycFX49bRKTxfJSQxabtqXhvn2lvGom8dVKkRZu
	X405nmBvjcYcVlgluQFJBkILRPo/4dudhDsyc4L6um2socE/n4PW+loCa9L7DQFMonf
	nu17WWyz0V3u+VAqq8kmEvZmHn+z0TrXnuDSc2/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a75e1b4-686b5cac-8f97-4310-8848-fcc943395c27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 901dcb228a54a0b84753f38cc85e10cfaf021aec70455b88c9450de3c486f19b
Date: Tue, 8 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646758584
