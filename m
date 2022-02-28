Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6306F15C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646079984;
	h=To:Subject:From:Message-Id:Date;
	bh=ljvMll/WQJs0QRPD6wVpsMcDkTQWQSClmI24VfoAIqY=;
	b=bdwzraoBctK1w7yj5vy8d12CUN+JyZU6hxJ5QQMKyLONn9yQdI90Tx9QIdf5ijnB
	oK+vqG8qrMPUUeVzlR7mEatifUKEqznoquPGCofER5nFKOOJPxCZDUrvO/v1d6d2Mp/
	6hcOydccIsn6x8LZRL1WlgSaAZUwfi2hAJH5mDhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646079984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ljvMll/WQJs0QRPD6wVpsMcDkTQWQSClmI24VfoAIqY=;
	b=Es/5lBPXecweBL1C9g8KLP+mgpW56ZudQwVfjUKbRJ2g9bl1T0PHqNCk8EI/Ko2Q
	mW2O6lfO/F7t5Mk3I2qgE24Pk5D+5QgNqXrrZnH5gaXLMYf0H8kyP6h6KD4c7aOYPKW
	qwIpgpg4IsyZQn2oGLpx4a3vKWlRDNTqhqQsXTbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4203448d-45a1d934-8e64-40d9-baad-4cf57ca97862-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 246b7a0ce056318fa73006379acff6c1cbdf763596f591b96556b662be049626
Date: Mon, 28 Feb 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646079984
