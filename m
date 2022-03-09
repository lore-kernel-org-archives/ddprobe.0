Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCBE15A3
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646796385;
	h=To:Subject:From:Message-Id:Date;
	bh=BOy19imu+ScL1wAPEYoXH9Ff49GwMBzy9EWaiyh9VDI=;
	b=SsLD5uE3fb1K4/KS7Qq3aqeSlF5++TJqzD+JIXOF3/tT8JKzbpxS09iE9sl/iJJR
	i4vfS3NlICji03GqJzotZ4NXEfqiQ4OmLvXrS2VK4cgLpum7NwRce+tIggAXcxaumxC
	ZavTy2ijJzAmcxVqQXJkcfjhhVGpJ9IyVXSXMLag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646796385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BOy19imu+ScL1wAPEYoXH9Ff49GwMBzy9EWaiyh9VDI=;
	b=kAqbvrsruDvQvd+gHkvKbnkMgyHXoeiLb3LSq//zJo9vvpoSTmdBJMizqbDTNVF6
	dejs6zCje4j+ZmYaaNm7MQ5J/oMhFkCJcFOL6tpJh9rFJFeWUHxDRPsdoEtAN6aNPF+
	boN4lHBRk+vZspF11LyoC9kT1sQ+2SeVIcRGOJtc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6cb6a9eb-05e4cbad-b1bd-4c0d-9f82-9113592d5787-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6076f2a6873383b48feabd6bf6bee7ffed0b51718cf107150fad53158205de15
Date: Wed, 9 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646796384
