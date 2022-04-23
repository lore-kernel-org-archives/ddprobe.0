Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9D67A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 17:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650734938;
	h=To:Subject:From:Message-Id:Date;
	bh=2jBH61041gnMejBLJmzklg+Il6RQ/gSmYSQuWSZyIdE=;
	b=b8REX4jlfalRVNldyR9XhVOwcRNQCSNBCQWMb/ikQ9OvfX0bvRfnHIfHVJlo0My0
	gHPCw+hOE+aoW4ooTNg2xtd2txHhEZm2C29H3ErclzfMn3PkbUx+lZCDWmqMFdeP81b
	Zr3aoaMZ4gG6cyg1HsRR9L59ZU1jBfhbfbmqQPDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650734938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2jBH61041gnMejBLJmzklg+Il6RQ/gSmYSQuWSZyIdE=;
	b=Vq+Xe4PfM05SjmNv5ikT/jKMr6y8u9kKsEjAQ0zZ2ZHkVn2arkNqWlAtmtAWxQxQ
	ATcR/ei7b5IwnEaFDQOYMP80pQrJB3v45kGQnqU8qngkqHBZuTbYQAZJVMtcPt9whn1
	IaIZELi5m7fK7qiy95y9wErFQ15Q21zHs9JUv3bQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057783896-ae4a8e8e-cba7-4aa3-a3b4-f22277d5726e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77e15f609fac8e33c38ea4b1f9c49408159a3752ed443bb3d7b0506801a5a0f1
Date: Sat, 23 Apr 2022 17:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650734938
