Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BD310EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646559384;
	h=To:Subject:From:Message-Id:Date;
	bh=X8ZfIGznaEsyJNkF0JI8unfEeeEpliVKJx1nMeFxJyw=;
	b=KIxH25aMGhVH1IrdM25QNEE08uAumupv0ZbVks7OF/lj5za65UQ3S/4FCQX5pZy4
	rjfPklZIpc2/psv5Hw4a2hum+TjsP9s6uKSGZTUsWVWnDwIDGd55WjrQ8Vch6vkeqTo
	rgWuaBp0LcHDCLHk8WFZJkR4NkFjXn+3R6NWKKy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646559384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X8ZfIGznaEsyJNkF0JI8unfEeeEpliVKJx1nMeFxJyw=;
	b=Ycw/Yaa20Udx3utLuT0kGIXHWRZ4bUfaPTjjZVFuAWZBLsVvugjS1AQxxK+yHidC
	GNYEOKwJx4tKANG3Rmb/wFcHBna+Tb8eF3OL+vyDNPX0NwTpqtR1t1MsIS58ApJx3C2
	5IbTOo0H4rHCJtZ6Eg4jP4RKuFqywVHkTJ2+HkqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e9654d4-7a4a7b9d-d32f-4cf9-adc8-d36a7722d85c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d014dbf3fb935cca2590bb8d9689d4f465d8453cf73b51a53f4e7189a390d84
Date: Sun, 6 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646559384
