Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309FF7C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB54C4339B
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680607625;
	bh=LZdYx/FlLWpPJbH57MmzJ6jn0q+nz9uJk+aqVm/j668=;
	h=To:Subject:From:Date:From;
	b=P6zZE4rbYvxvFCJ46daTCVHwtNDCcfD2wr7LAvxgI/1x7aO6rMcbW5kuPQjtS2pLA
	 AlXWF6Ft8EXCOrr6VWkMQwIdeVdS0vMIAKh/rLApZfW5+cQQDNA1/rwzf8sHE0ltL1
	 CUH7VqJRymgbqgEeer+PwR18kYQwj+cU9uw9HJoEwMwVrWWC+BaFdyS4l+ppCMix1z
	 S8j0SrTgsOsOmkUWASwht6vPbmBCEp/QaHy1+8R8pobd2WVvhArArGRSeGEFh/NDJG
	 kSm7znnyi/RxoSpTpoCc52xFfpLfrNinBzDTUwCaZtXSgtsItKZu++qXmxxOExYbni
	 NPrz1+tiAO5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF468C761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168060762577.28859.2759283002076872126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fcb76ca3578e5184774637eff424e1e17f8353439fe1c7b2d4708a4f6c8a73
Date: Tue, 04 Apr 2023 11:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680607625
