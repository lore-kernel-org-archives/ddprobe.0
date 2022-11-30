Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F366FA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73AC3C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669827654;
	bh=dljg/kmC+tPbhXziPrTjQXfPryqwl/T+LMtVmIOwUMc=;
	h=To:Subject:From:Date:From;
	b=WiqHvsO0hyYZAuBlQrgx3vZqAMPF2DTd9UhBNqvQyfDJcsCAB0IdNG2hB089pfGyU
	 O8Ie5ReyZ7FE3tGTed5RJTt5f5HHRb6wrzhUZWBNmjWPVFifPBxlfjehD9Iu+0QeyR
	 5vLj5jl1KRUiRjBjD1GgFa2dRKmR5Xx8+ZgbP6ylSvAoZtXP3n1//q57eWd131wgXU
	 56Y6HmaljvQj+Q7rVubf8efNw+MxwT4aMWrg958yDzGJ3BOzD/pKJUfbYc4L71EDZY
	 mex9ngmR7I+xBzCqkgyMhMTj5YSCfLqqhR2+Ghy5r5wSW18O4y1HiP9z4vxekNVW6p
	 gaswSPSCLB/tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D3FC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982765435.28300.4186806872591469538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3a3972f7aedc4d3aa1070dcac5fc45381e19b913e7a21c73de9d51f65dc20b
Date: Wed, 30 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669827654
