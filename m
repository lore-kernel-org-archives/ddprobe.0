Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CB257EB
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645328185;
	h=To:Subject:From:Message-Id:Date;
	bh=1fNS5+Wi1aKBRs2V+mFemp17GrQ1L3cB/EXyHQa0GGM=;
	b=K8Oj5PYXEoBOCHrAc7Ew1cP81nvt7jyrLlu/oxsiCfVV+l0hBJPm5cxcmaNHdO2t
	93ElxIFfGd6exLxyXqH5fIONmbako6QhTEpGOQT/ZLpmUvw40nTnEj2vZHFtsm5EDun
	PYCFQWmTTbfXVOM1NkmFmYjyhdsY27WB6sJPu3CI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645328185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1fNS5+Wi1aKBRs2V+mFemp17GrQ1L3cB/EXyHQa0GGM=;
	b=Po1hZxQVexWEiQvMdmCsUV0DDBgltq+DESzC/Zy7SMhoOf89DjirwDokW1XRnt9f
	L/z/8oVfhrF5/wLLjnYzGFZkPLxpRVx5a5ZdJhC9hI7Y2aukXlmOQnrPsYhwvefwkRq
	kQGX6aw3cLACDzuTerC6VWKyFB9/OwTA2o/6Qijg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1533b5d3-7a5a865f-3344-4737-9660-9551e1e79a33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8d70216b017cb2253c001aad65962903c852d8d24e617831c3623f67c6f04f4
Date: Sun, 20 Feb 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645328184
