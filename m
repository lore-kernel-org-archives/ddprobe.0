Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7567A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647937285;
	h=To:Subject:From:Message-Id:Date;
	bh=3JHs06E+gFDJcnsN4GSbzMxKkfl+VwXH0ZGHN23+Hug=;
	b=TjUunudd5fMwfHZmn+HRd1CHhbKBDX0vSF5jReqpHhD8G9B69xbf1L9LFcyOs4+h
	xujxqDdY/PmEvFxKFVVSpXkapDcQyyZPVIfwTVtX8KNnUXJHox/T3FSICG2vv3gdVnI
	vtP6LvI0gfM7p8/WTFXnG52O3rwWjm4EyCE1LZ0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647937285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3JHs06E+gFDJcnsN4GSbzMxKkfl+VwXH0ZGHN23+Hug=;
	b=NOBSbBLiPFUwdSpkeaJShW8MwwVk3EB1yIz9yVWjcNi7nn+oc7NhcZvtpA8U6eS4
	VXrjNd5sAlizgTtmP3SXSoIHtEJvJ7gQwDMqakRKjvPYrIWt+AXJ/hH25gNRKklKnzI
	mXJg9YBl7XJcJXX9oXb6eLy4RH1rGlMFpAWDqfRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0b76ae1-f3247d2e-c1c5-42a7-a12e-9678655d7d67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5b93ed1e5187509aa4190232d87dbf82447e682bbf778a025809188b8eee0bc
Date: Tue, 22 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647937284
