Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7866A7E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646822784;
	h=To:Subject:From:Message-Id:Date;
	bh=5O1TBzAb9kQsM1SRYWD66q4rvhebR+ih72ijS+rCS3U=;
	b=OxQZK5ESYaHE7rwrdCjxQHTch9iLPp0Rzx1Z6dxU43QZHzc1JlFdRXBC2webmZ51
	dLqwE2S/EDXv7kmt1ctoQA29RB+MERLT/WmI2nRuzVJxas2hpnErZH90DhKnq+zxv2Q
	w6/NCTxfPenes0vXV0MXcRywwfFbJ5KGeP4zaDc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646822784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5O1TBzAb9kQsM1SRYWD66q4rvhebR+ih72ijS+rCS3U=;
	b=Fr9vezxJU9Ss1BjmjVgPJPVRa7h3HsyqOBQvgr3T/+twHmwHezibRKQgSX1C8A6B
	cioSM8sO6p+pDd2jnIs6HwBTpRZjw45mecdEWvkdvQfmhrkP5OLelwvjLP8SJH7tLMG
	vRHG2w+IpVnUmyZ//pME0ZF94cricyqJmJtE29r4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e497f1f-ec831c39-d301-4adb-abd4-bde5ecd39b2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03e7b8bcda84de0f9cef12bc69fad81e92e9e5add5efa27b5ac279549e283403
Date: Wed, 9 Mar 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646822784
