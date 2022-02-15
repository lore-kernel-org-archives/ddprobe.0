Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE3F7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644893785;
	h=To:Subject:From:Message-Id:Date;
	bh=hKL50r1s4hT+vyFXtpb/nxeAwCsz68I+sL7TNWwFh1E=;
	b=i8I9DFKnopLhlbLMiSnB480m0Bg2nA4srYqZeSuBaItVPOdXiXWjvfSuXUbQR0yM
	M3qujYWnRHVjzpY22IDpzMVbNQq2hiPlphYO4VDTQb0+B6yvnPIZ3oC3acXZf//wjuQ
	O+Y6dZYk2bJhIHDCR6E7A7s+JJqAUzzs4WI0Kroc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644893785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hKL50r1s4hT+vyFXtpb/nxeAwCsz68I+sL7TNWwFh1E=;
	b=W2r1cCtMAyvvQZ/wgDh0PGjIfoQjc3vYGnPpqdi+1uTlvUFmysHnKHBSqdHqXzb9
	ahX7MittKf96hXgveWAgKMhrbXfY2SNclsaMUY5o8oP/izaPpVm7EcvkvDOVOVXTQdY
	K1WY891NaaQWvgGylc4yWDt8hcUT1HbrhxPB+7FU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb4f4ab8-22d5abcd-8e6b-4913-8691-3c49d42cf8f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72ec33a466ad0a21bc026c45ec96a26b705291254b78621dffbd8f2b185692ee
Date: Tue, 15 Feb 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644893784
