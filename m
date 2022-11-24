Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C932F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9A0C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669310454;
	bh=rJaLDZbM13yQoMmVLRiDzvebLBhv12WnkZI/qG4XaF8=;
	h=To:Subject:From:Date:From;
	b=JLs/6V6FuJkm987116jIaxKW8xfHnsyRW9GV9jmFRrJPsGAjnlUb4JZ4dlaUFdLI4
	 pbtCRFvv3xjGVZkVZh+insqFli7mtv1JLzNv7ozTOzzoMYzogh89/hw7wIl6YouyRI
	 tPmC11Ll7mAnGLhXrsYqQlWrjOl0pDVn2H3CIMuYBJaZWSfijYNUtg+BESFMxq8hX5
	 02SmM2eq90kTSrAtsDkmwXH5njEIcd1sPolVgt3eIPJ7Mp37TngozTuCvvtfO3ti5R
	 3RWYKpjvINWHYfQkorzkJksSIfTh/+ucZiWoxk0M0WQfx/XPrzKcu49jbQSi6voGMG
	 UbhH1DmdnCvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A800C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931045436.8064.11249986471167435354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f0136e13b1dbfb9bd6ae14996e4ac40f4bc1a7cbe606aee727f7dedf9a417b
Date: Thu, 24 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669310454
