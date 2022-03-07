Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F1C7A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646656584;
	h=To:Subject:From:Message-Id:Date;
	bh=Cm7ZQwa8S/Da9Cu5lkqR64YFXq4Qf7RwLwEYIIYaoUk=;
	b=J55EcSfB7DqvhJykPKOTLfbWH/r01c+OWf7o9q8XIIY9A74+lNzyNPebkdGyKF+b
	KEo7KUXvgFqf7IcuSjesSrTz8lCWpp84S2osBIn2t6fMm3+NfpmKGzAXS6mVKNA+jpn
	C0o7XjXWBuFa1EeOoRKBJ30W3yLpZB67YO9MdKvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646656584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cm7ZQwa8S/Da9Cu5lkqR64YFXq4Qf7RwLwEYIIYaoUk=;
	b=E7TSqzVae/3V5dGUIN3SvccPB7xqGCvNrsHiBK4rpi3AwsppY00T1gN//i0dNCmz
	LtHd2Y/7EmVvOAUhPSm05200jzUsOCtcnFwQDIFt8pmAzLGVwKI7mXs+Xh+WCnKqi/8
	DCYUo9d6mC1RbVSHsbeBoA/jpoh4uceBtEpqvCgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64617c66-ba779054-3edd-4669-9235-daa730ad225d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a72004fb679b1522840bf6718d15a761fc6a33aebc0f19b77799e65b8cf4ab2
Date: Mon, 7 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646656584
