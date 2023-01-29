Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432ED15A2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FF5C433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674977585;
	bh=ehSigE0Ey4tNS4Z6q2bB3IS41xCuHuEBM4kBRSD5g9g=;
	h=To:Subject:From:Date:From;
	b=sB7OYkwR8J6YOyNdkpvfp22N1iJcZRrnOhtuYUVpXcuD5DibdIqe9D7yfiYLdlgem
	 ASio7pF2fwvEaYB/X9PFEMh1lrlf/easW19qLb5IjlS9RK2+SwEYR05nrGxOMogOus
	 grDYV2zZP3LVmnOI11vAW0yYw5vRm+zVqNV98p6W+PJPmZEZ2SVXznvEmccXRHSXzI
	 ARWWEWlRQTuOvbjHCgjWkCSYQU/axY1AS4RnnJNQXFempASnXw8Pd8QLb32jDm2lrI
	 Z3h7d5EQkKOxcEnWRpImHYb9PIxqMTLowL7Jg7ixCWyoxlZZ09Xwz+X2WawGjDbl8A
	 xeO+OMKms5Ebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C210AC05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 07:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167497758576.17255.16158297747483697472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773d42c2abb3093da3770539dd750ff54786388b222c02b20ab89d939350e069
Date: Sun, 29 Jan 2023 07:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674977585
