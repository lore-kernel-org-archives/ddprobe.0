Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8091FD2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646631685;
	h=To:Subject:From:Message-Id:Date;
	bh=K0Qi78kfS9S3gGgiQnmWkneryY7rD8VtoxX7KOP+Q9Q=;
	b=YL1PA7bZjw072qIpBUX2u/IeNnp6HtxEEp9lZAXEIe2xfMKnP+5T6N9GtxfKovXJ
	oLlv8W7aaRHSxFvG01DZbrImP4/Sb3R3uH5SiTgMmvWfAtqk65Yaz4kFCoLwkOl/Rfj
	W4X9/uAegZjX5iz/ga8s6g66Yepnseu+w9DNnTWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646631685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K0Qi78kfS9S3gGgiQnmWkneryY7rD8VtoxX7KOP+Q9Q=;
	b=C+mekrlWTIcORIrnhuGIrEhfEKikS+NgI1Rtjd+dClBsfyqjoLuPTOlwA+zfuD0i
	/78zwqGxSJnp/i4HxthbVky97uQEkSwqJMNY5mWbTf46/v0IzW31lxuiF4Z5in4LI/m
	cpsxkN4onlE2TrrKItlYs9Gnkk7kb31cRLZx+aFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f62e58a99-6e7d54d1-eec0-47ce-b10c-a20ba8861264-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b42160530d45ec0ea2870ef586bdf52ac393da4eef138ee5092e1203a5b0448b
Date: Mon, 7 Mar 2022 05:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646631684
