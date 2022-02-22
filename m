Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824AD7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645551985;
	h=To:Subject:From:Message-Id:Date;
	bh=BVi3s37z7V4NU0LMT9RPG+wSeb1DimDb++tKiPUC3Fs=;
	b=g1wHRJ57t7nn15iWqzBBUCKFmoPZqwyE20HdgkQK8QQx1rrDLCO+yaDD7kZBD2JR
	0W9Ql4fQSm9BoQu9L9ypGrErC51JYgqu/8ZNvXhxjXSQC3KzPleGbenzIFX1q8Fa5i2
	/KCSZv4s6SAkvMjQjFm9oIBulDwVou5LK6bfX9xI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645551985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BVi3s37z7V4NU0LMT9RPG+wSeb1DimDb++tKiPUC3Fs=;
	b=D1quZ9X4G91q5YCRv57L3+7KWV/02vmBL4LAu34rJQTiBiCj+pXQHpsECxozkngs
	f+cFJxcmoioZ4UUcjQk79rThSJjm8mH3+q2IYnm8U8oCN53wo7YI8ZMVl/nSA4G0SFK
	lYZN2l+B0J60YVN/jDv8SdxzNtZuyHkNDLOU1lbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f228aa0df-1ab20a48-ec03-4685-9b2d-b45543e07814-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1827e1bf153c804aa48955bc8131111996c8abcfcb227dc1a9424fdce2edd0ec
Date: Tue, 22 Feb 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645551984
