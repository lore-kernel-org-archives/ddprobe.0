Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E7A7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646971885;
	h=To:Subject:From:Message-Id:Date;
	bh=zzKriQ3e5C6MqMkIQUQ7BNPGkUh+hYYPNM4QywXwgCM=;
	b=DfQbXyBSJI9F3duQ9LaaXhfhgzUKEiNNucWeHwGpZNL+Huotsb914tqTXLKU3tFS
	ImCPqlCCTmVZmWIS8CY6tHIpVnIh7iHpow5eIzVgPDhlgvFXfwUHyAPnFJkADwA3mob
	ucA1oKcrxjWXA/8VLyNdtcgvLnxVnNEqk98+xIuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646971885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zzKriQ3e5C6MqMkIQUQ7BNPGkUh+hYYPNM4QywXwgCM=;
	b=Opy0skidxrg6reIVyj3WTQ3iJPUcpMv9XcJtPULVcL5J0SnP+VkT+mF17vfHdAn9
	pGuQLL3pNAyAGfHbEsethZ4Zxz7WKbL2JgL9/rI93d2VheYwbjWTlPNTUmmftPKnLzg
	FGAiUKhqpZnv/BehqKUrfHitqqd6N4N1/P/ZQ2Qc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f772c9501-aec3d7fe-9152-4320-833d-f4f41a5db773-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a025bc8a77e4097b62f0741a5055f9f9014fd864683b9ca89ed37b75d71a88b2
Date: Fri, 11 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646971884
