Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B077D10EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645806685;
	h=To:Subject:From:Message-Id:Date;
	bh=y8yOxeUng9JpacyQ8Ot9HQ9wFy8M+dC0RsGgw+7Lt4I=;
	b=UaGWmqdfFUO/sXB1CYaf5juBlXhyhktrhMbAFlwis4MWzbmbUGzmZiyaV09XTlfi
	PcYmDSYqjI8+yYLNiUDtCimYe927A3F36J3Kok7GPIMrZ3Eofk6GX4r+Nx4nVDxQiDU
	qRN10K6JNWlfOFeiQbmCy8NByZGT4MbbtSqanFjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645806685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y8yOxeUng9JpacyQ8Ot9HQ9wFy8M+dC0RsGgw+7Lt4I=;
	b=b41VyOn+kw9ROTPc/ALeZs0MK3N01IAe3HhxNIkeiCM3DvG7yVhD+D2hRCo0H1rL
	yKeOECHxW9wjOrhyVFs6nx2+UpEHt1UwDN+YxXTxrWVqAx3jZu0aCrBE1f4Vl+/n52g
	pjPY5rmXQMH9dxdePAbYwWcF1UQOIWgA0ixdrsQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31b90a7d-fbc94ddf-dac2-46f6-85b7-3696c36de1ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2672540608adf549b57efeb24b95c900587f8748c89ed356f324665b81c72049
Date: Fri, 25 Feb 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645806684
