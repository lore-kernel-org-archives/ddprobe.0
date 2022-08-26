Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29044401
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661538052;
	bh=vYa7gLAipDF6j712LO1WJWjGkxwVDtA/2sQqVt8ZYK4=;
	h=To:Subject:From:Date:From;
	b=N40NCWdgd6KznjpCCFtaVQp3+wVYC4f1Rk7dh4Mt8QaF34apnPdTuv/gULNEuLZm/
	 YAqdfOWf6YxQPE5pxdyxljBbDrJ2AIW5WZukbyEq2D6dBFIZDj4jogN2bKyQ4CBHH5
	 A8N9XUJvllXg3s1P00suJyTu8NjL8ELUOI0u/xmiPxUWEXNVc8UX+gjvNWu5redAIt
	 Ycm8BR7SdX6IafljV/xP2qO9zzn/WvohbHvREHtA05WR4iDZ4CB823F6ZzICQk55Qe
	 Mxy9jl0MLc92rlfgQ5aAgsSSCRjQFnw3NZha3PwxlkdIUcqKDpdPiiJzj2EJMU6BHW
	 rek4EMDms/bGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84147ECAAA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153805252.12862.4459430443566203615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a5fd0dfb2faaaea6f5bff2a133a2021383a692ff0b92224b85a37598d97ccc
Date: Fri, 26 Aug 2022 18:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661538052
