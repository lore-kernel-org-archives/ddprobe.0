Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E5D1B62
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645712184;
	h=To:Subject:From:Message-Id:Date;
	bh=VMnboNracdVfGyCCWKM4K6VGvPw2hl2cqEWQQoiHg0U=;
	b=eWofAuHvgvSmix3e/Ia3jNRn0YcMZu0fmhg+uzkFK+UMj3br/Jm2kx/wwY6e1fTP
	cATl+JwSsX0Dp+udHCJ+YgRVc3SmwSCVNc6dk3gwTI9shpFfyYTCmdk5tOGfFnmgKeh
	tZheFc1p5dsKr4fKGZvIIYuCzrb+Om/qv8oc7ibA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645712184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VMnboNracdVfGyCCWKM4K6VGvPw2hl2cqEWQQoiHg0U=;
	b=K/0aoD2hzZIstxZx88QdtDA7ww9SNXKj6DDi38/76nMqMrORZIB3MrfUbu254kLl
	TIteSY+PjDMQeFZs8WrV+sWpx6Vj3vc+8W+lSi0J+Dr61X/iWGGPL78iP+Un9USK1mk
	+NYakaVTxU//GZGrNIsqfyXa1aC6O2JjsLSCIW8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c1715a3-2eea67a6-fbf2-49a9-b29b-eaed9fdedbef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffbd03a1f8df680df32c9e33eb20b9ae7d9798181f6f01fdd9fa0f80a9bd1b7d
Date: Thu, 24 Feb 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645712184
