Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4577D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 19:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644781231;
	h=To:Subject:From:Message-Id:Date;
	bh=iE8iNPkF9zHPtVQmDyzWC/ZBQinDs81WuOFSTQfgs6A=;
	b=ffpjKMrl2yOopOu9ybhNCZBrLMewzKnxdVQou6Vkehz5Ux/GjkgUIi6EiJQwNFoi
	FP08GuzA9SuaVDxdWm9HkCqgsQBCVQ982lHrmw0c15sDZan+5HCrq7ALUdIBGrO7ZRb
	kwEP+9LCS3wDjBayuBi3/Ov59K0DZZb0kKNhizEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644781231;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iE8iNPkF9zHPtVQmDyzWC/ZBQinDs81WuOFSTQfgs6A=;
	b=YlzZn0rCj/eqIdjM1rgsnWmkds4RU6wL1e5W60vxCCggR7MT9BsOW1pQqLySBFG6
	XznQCpZZLbZgJZtQwZ90bSToytIKsiNXN7KyTeOdOAWvPsSNqeL3RuwAwOs0FGovD6e
	9TLOrE2/Kt9UEcARDrAnpGG99vfbf2mVopcMFJmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef499db87-62b5039c-37cc-4358-848c-91d3fb7e0390-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e04f3991842ead76e8d5580698650899c4ef38d52782a9ca0ec02e66f42bf438
Date: Sun, 13 Feb 2022 19:40:31 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644781230
