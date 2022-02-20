Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65214179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645342884;
	h=To:Subject:From:Message-Id:Date;
	bh=oSdxccDKvtvr/2Y8cJPHrqB6LCABlo7gCeDO8VLiHlE=;
	b=SPInyKJlt5xxS9TO3FrUF9B5AgXzbL/j4dvbrUPfUH73cdjhAo5q0X0r70XaO97U
	GG0SAXuH/KLYSOZlTXSVwppWENsEf0OaIf6hqyvSf4GG7qChCR2Y0uXYifJGOjPSz+Z
	C6A3XxHH5oqLPJV0ec04kFwiFfxjWBt7DhxjXKMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645342884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oSdxccDKvtvr/2Y8cJPHrqB6LCABlo7gCeDO8VLiHlE=;
	b=KQ9T24WpYCn4Zm0+xg3zDHxvmNAWsLF6T3UtXGjPcME2v+WdOB6jUWG5B4mBD/k1
	7uupZ2Fb0uTW4wGR33B9CUp1XaUGxx4UP3UPufN/unP/8SaOiXD778k/qb/P/UuAjKt
	/3fIYWv8S3YWDGgbTv14MWAmRm5EO/dozdsB7Y+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f161403a5-0f0670e5-1924-42cf-87f1-80a9fbad1a32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c81ec085cc49076b335ce16c26833bccac4cd46f916e3509ac3fa07e6ee77c07
Date: Sun, 20 Feb 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645342884
