Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF84154AA
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 11:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD179C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693309448;
	bh=TyXCHEW7Y/nmmOzgeNsuY+akTaUfST0Oge2O3hZJkMM=;
	h=To:Subject:From:Date:From;
	b=TzCE0hcuQLY5y75VlglLTCOVOJIpueEoPXoRTk+3Mpmq0/+Gpoxtf1pm3CBbrhrqJ
	 EXjw9ZzX8w9dDgVWdEFAZZpjxOqhPrHWpfySP9TN1amWv4VAxJ/uOzbargtrHnf+Dd
	 gWYhu8nUqFYK81H9FWy0b04lCNheoTDqYJVunat1NFg4/YkJYf60scjW0nkMwUmoCW
	 5zzm5UrLwWjxE8C5tiWlxUGB5hzlZNGKjmZQPYZHjk4SYuu36oUR6eI7pJ2zZ7XZf6
	 k5dYUrHxkEieFVMw5g/HEelv4377eHmyzNMOGDr+XX/zVxcmtdA059U6NbEv62Kf+i
	 FYe+mzmaOEB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA220C83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 11:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169330944868.13954.13801258439963999330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a823b7d193a48384ff3d0b57ee47d9d6de088c3d81095826bf0b88171e31e3
Date: Tue, 29 Aug 2023 11:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693309448
