Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD25365
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 13:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644758403;
	h=To:Subject:From:Message-Id:Date;
	bh=AIkSARKOZEGYMkz6ZTydeCRH7H5r7f0y5WlAJtEyQds=;
	b=ONNueDFhoAfx0CIQwMVT8CRrAmVNWiKqr0aHNVruXlz1ZiN/mKNwiLDRxCBDozVT
	/Hp6tFzYH6ROaP8y4nF/+gciGtFBgntGaIPUyO9Csfc3eaE4QzU9Gwr4jhmeHugj4nY
	6zBIL+LDDBfZ0kbK1tWeaj2+D6eKfzm6lhvANkZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644758403;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AIkSARKOZEGYMkz6ZTydeCRH7H5r7f0y5WlAJtEyQds=;
	b=fnrSWAorHfMeemE2DFJUhjt+EZ0E/kgoLVMfTflfvQeRQPxQDf6LXENmOuWqEmor
	KilY8ya5O9CqA6I67tNyxC4djhGyIaLblmx/qS7mfFLrMd7SwTzEoRg6TBX01usv6m2
	U03574OvwbWBLj12aeFEA8gNFHoO/r9xtuGU8GeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef33d8755-6ee4957a-9a9e-43b6-8c73-9f28396bb067-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f69c778f60c4d05f12c19ebe66ac1705e7e2b3309ec095ccad5e24173229d51
Date: Sun, 13 Feb 2022 13:20:02 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644758402
