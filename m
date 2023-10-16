Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DBA620
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 02:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9gKPipz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78C2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 02:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697423828;
	bh=VlrYnonXVqeuCaGd2VTfZR3WKspiRrValWXVdWil1uk=;
	h=To:Subject:From:Date:From;
	b=B9gKPipzkeV1QqfeUJ5RkcOOG1UqVX2mG3pOkhYc9W5aEe9c+EZL6SePI5bRnbij1
	 rfSxroj8oiSy3fdWTkYq8+RNRPy2ycGQj6Wccc/tHrZuj+vc5qmxjfEe6ysa1xHIHw
	 xfu9YejcY7p6xIlQvLjqv6MRzo4+VxDnjZ4bvA3ONY21QxYy+rhlsjMF6TleArOj0W
	 GSc+CwIpMjsR+8qgmnwZZK4b8S/iDxMQIKzTgFki4RU9YC7XWF8k7CcmvdzVTEUhy6
	 DHCnKQ+Tn84x0U1HwLszZC3/rWAtt1N0LXDJIgjC//P65f+q2EzYxKQQL3FYjAlmUG
	 BqzypuFPTvLKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A43CDB47E
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 02:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169742382873.8953.16350274547228080132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12022a86d3bc6103895e161b12f0fcb4ffa5d6c6cc781eb9aee97389d6c33248
Date: Mon, 16 Oct 2023 02:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697423828
