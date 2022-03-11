Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2627E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646970984;
	h=To:Subject:From:Message-Id:Date;
	bh=vpOzyYmrhzIRx6ExIIxeRzL2cIFYKDmsL+rxf4zh0eM=;
	b=VqYoOswILDtN5D4QJzleoi6hKSnmj/DLtlrZiGnuYKSJ64QIpF/e/8KrD5nNSWMv
	VWP8Vbv1zSeO/BaunNekl32/sK6Tq63gWU5jy6eCiyvI7J1tllXCAidwaM/6qiEq+Le
	D6TIcMOEaKexH4ZAu8dNnpY1L/0pUu1F5zaYES9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646970984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vpOzyYmrhzIRx6ExIIxeRzL2cIFYKDmsL+rxf4zh0eM=;
	b=XafrkCkvJXHl59igsxM8RdcbjUt/RpTR5zWTBKTGHgl2oxYdt6CcaxhpLXIWmjz9
	HuJa8v5IYuaBLkuTaEzO1tbSRnMLC1CFLWe34tDZCtqJq4LCuymBPhTXkIrVTm2nGxc
	gpt/XjWOV/6vGLpGMJyclffpTyF0g/lgUe+jGG6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f771ed94b-7ee531f2-9555-44e2-8ea0-08b2f3e54799-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 972b1eb4657353d4b259e9fc809b8ef1da49b0ee2917448b45c96d69c3dadce6
Date: Fri, 11 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646970984
