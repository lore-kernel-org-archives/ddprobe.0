Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5310157D1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645310784;
	h=To:Subject:From:Message-Id:Date;
	bh=qTG3L1Bwu5gv1XkRVWww2utOQI7dnBxJG8yPn/1nfFE=;
	b=B1cXuy9uCPt3rgpKyuvGxujmfjap2gFXj9JxlHOdL6hhJHKmalP04SiVTy2w4Ca3
	cl7XK0QoIfLnReeD3/a5GkR5RUMyH1Zd3tpv8922x8iGo0X5yhzzUB3wUhM/qxhcttF
	I1mfpPsQ00IpQgi5f2D7wuShMXwNpJ9SneWu80A8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645310784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qTG3L1Bwu5gv1XkRVWww2utOQI7dnBxJG8yPn/1nfFE=;
	b=bMXJwIF2ypE8+3oa3mURy1JL0JGZp7zmVZMD5Kz3VxZIID3fUHWwx9fDF4L6Ee/I
	Ymhf1/RVKmJStAa5XQ4eODntzkliXbqfvygu2oeEv00y87l3I8YAME3VkUGmk9X2hm3
	gWTQ1G7KaIuhrnSaZXiPyFOBJXdPUbd2K5K6k1J8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f142a350e-60586ce8-94ea-4506-a215-31ce5e72cb54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34c0de4050f9d6a1c13dacf5709f6dd26c4b571786f45e99b5630b3990e089a5
Date: Sat, 19 Feb 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645310784
