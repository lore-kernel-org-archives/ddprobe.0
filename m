Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B949BA31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647944184;
	h=To:Subject:From:Message-Id:Date;
	bh=mn9I5GZyUOnyFM8KIwLkJXkLGfMIaH8ByMuCIC4dezs=;
	b=I0dEoagkBbaerhIe3vYOPbErwLEAdh4DJ0EYdcKqAMAd4o7Z34SBpWOLhc5dn127
	GWH0XoqmX1su5b7FlaJZ1SKdZ28W037yIvzu9KmYr9rX96zJALPXWbqqvGjKyJAokak
	eLwd3vEnHMwogod/I3jOthknB04w8y2kC/KlF0zQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647944184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mn9I5GZyUOnyFM8KIwLkJXkLGfMIaH8ByMuCIC4dezs=;
	b=Y1dYHt60/gN4nz7bVYq2c7DVJAvYIE1P6zlkVNB6DaCOnTzsRHCs5kvM4jT3zALS
	mOAcj+7FU307Is4Lh16zbj6Ew4FRhIbGlCu4qfZ9c7SfmBlGYuR4ewS6dR550pJt5Tz
	jg9n5295kedSJQj4tT8kQVO2cokAdFY2btHsTM6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb120b3ca-e992da5d-fc6d-4c58-ac20-b52eea0b3b19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7c082e81815c7ee0d7a1a8196abcaf3a5cb22cedbacdbd68fda2079d520e12c
Date: Tue, 22 Mar 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647944184
