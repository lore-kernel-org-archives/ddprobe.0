Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F2163B
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 04:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C64C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 04:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683000845;
	bh=nLUzdv0pAgjLkD8R4hK1BsACJQekI/WaDaTJCRazwYI=;
	h=To:Subject:From:Date:From;
	b=s1xu9F6fn2F+UriGCPg6GJU4FU0pkp2zNJTJdcwaxYrIgZlWS9XUib4kJuQMJbd55
	 +lUW4gc8JzyJ3Urvsuq2DrgPEKZ5yjm12U+QvY0x87SbnXtOc19P1rL2y2RocRap+i
	 mlJIh8NHuvtRbEE/K+JMxKVdYIfm0COQcE7HWL5xBxOYIK+kvVqsFqMhhb9Qn1UGR1
	 y2jPp4haAQXCCSivHVhRSGu6Yk49QQkcMzLAOLQdWxkzI/5zs27/eyHKRvI4AJHmN2
	 /exuF4tas8y4T94JaW7ls79ls9zYuAciO+qChym7VVjQdEVRILF0a2e32qUGVG0t5U
	 LU/ydSJxP8/uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1220C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 04:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168300084578.4932.6579547419134431515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361e342106efa2d97a9034384df239f85c8ab291881662981371f6943bfba8a1
Date: Tue, 02 May 2023 04:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683000845
