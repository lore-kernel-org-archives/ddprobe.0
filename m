Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CF72FAE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645281985;
	h=To:Subject:From:Message-Id:Date;
	bh=nwt0F00+USkujvaGIRfZQZNkXos5IyDxDW+QScEx4lE=;
	b=WY6uRFv4A6GyGPNxvYeK1rcKyETJ5G/ZRVo2tc/8IbIKQToCV0vDATbKX0ezdR9f
	p+ItINzFsFjLG6gX99kB8q7SPyZl1JBYyaUxwNykX0dNMupKeTr0OrUUgw+JCnL9/Us
	4uBoyn3dkVVJAK+Uc3/2rCJ3rLbCjSOff9Blgn2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645281985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nwt0F00+USkujvaGIRfZQZNkXos5IyDxDW+QScEx4lE=;
	b=bKc+xsTS3i8gEG+14pyn2sBnauUk+zph8Z5PWTtDnyqv4+QUBrkhf7JDYH19mNxj
	wmY8K8GeZ2XsgpCwjKMCewUMjDxDoOvDAMmRkkoMN/xVmm3vn/VwO9bSdtXT0loxER6
	TS/MZAR4F4vJIVtPv2CmlgWb9FXLr57yL5RM6NwQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1272c16a-0cf1a701-1a52-4d21-b2b7-c8a3b5a0c8bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e4652892bc7d18175f9bd468d8897b774caf3aebea877061bd32f49b21b8cd5
Date: Sat, 19 Feb 2022 14:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645281984
