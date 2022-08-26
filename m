Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE51A28E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA53C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661506252;
	bh=7jE8ydWIQCk9B+cAq6rCqKLFbsYQnESNLuLcaU1O+Ig=;
	h=To:Subject:From:Date:From;
	b=kOieal2l1DO3euFW+lIdwhCBtYurPlCaNkKJpTXBKbQ0+2c43YmRhC/49N6r5D7dU
	 hDxOA4IODfbCM8Ldc6gQp6EIzxu+odQmtF+KbksW/jf7I7b0jmrUiIeisaBfljJaWi
	 VmglpA4rUBWoKtSFuSWmghPWMEZ6T1np1nqjWYEoFf6I/hAkMt8gCEcY0PAz3gCike
	 uDYDUanRZQ4HSe3rTkELAQuoROoO/BZkb4bJl30EEo6CmJKY/33ELKcnWySwsdRgmO
	 N03QA9/I/03pU8XwcG+FKoPTsVcjzgm1pIe6FXQXn9mMlOjvpXuaJSnkOSEUo4mVzE
	 nd8JTf4hTqZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C265ECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150625236.19876.2073827514054386406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0849dbcc08d0f1479b9ea95acf850d6d99b532a506fc923aacb9e5655984c99
Date: Fri, 26 Aug 2022 09:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661506252
