Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975574C9C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645224384;
	h=To:Subject:From:Message-Id:Date;
	bh=JY+TgN2hXntfIx6su5D/1l2mh0R5HkHANOkb29yCCpo=;
	b=TE70FiGF1wViCidY0LKIQz42YN9/1PNau4OY65b2iqAXihd6HU4eIvuXVMre7yOP
	dnsTG4hpAEtbrtt4a8nRo+2P2ARFKrXmakMC+ZhbopBZZGZ2BCsZ9s7DcIEds9ZR9PD
	eHmQUStzYVgubmJ2dL4RmhhMD3Eg869KrrtvQ9z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645224384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JY+TgN2hXntfIx6su5D/1l2mh0R5HkHANOkb29yCCpo=;
	b=cxxM2ZK7gtm+kKGGhInmUA12D6eqt7Du7jtEDMdhMowOsVfpB6don8VvdsuEHWEd
	2hcurGD8wQzX2cEzVMjA3mqSHOYRH4W/dDFiRT9QTFjw0LdjcphU623YLiTUUa+54rD
	bY59Wzs3hpsAEDZuMG8ZwdSRH7Q5pOGlYmjU108I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f03d930-842d6354-2d39-4c3a-b41b-37c9b9075abd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddf9da0379831302197b8043f34ea1cf9bfa8976009825c9c7328413e8beaa7f
Date: Fri, 18 Feb 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645224384
