Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEC7EBB
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 06:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B3CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 06:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679206445;
	bh=0XHoP+PMUXMUBbJgdDaE2hobJo2YZlMUOY8f+x0qUZU=;
	h=To:Subject:From:Date:From;
	b=bDAPlJuwVPXsT2SjUfhhDe+SM7TBkIV1vg1xquNYm3W7bZ64KEjeYkf3SdtYe/ufo
	 GRlNWfOzmDbaJvleXKLHJfUpK3R5d61fKM+02HQ6eRSLJe4F5pAAxuwFbAi8UO14N9
	 FlP/wUXia7LGj8aLC8eHOogWOZNuWtTmEuuVVxO+RxVq4yAV/hCKccLHzYuFAdI4KF
	 F53kBYrd+vohHMXVRfzHwexDW2FpQm/bH//iF7xqsA1vLVRlVvQ1IonTJEIttNBHQZ
	 cK6iJ92x0KRin9wBxrbOB6Vnsey/9mOkZz3cAz+oEGzCp0MFW25wqfyQo57Jwj0PeC
	 af5yDdoc+SwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABFCC6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 06:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167920644575.6914.16156822247807189949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9198738304ca88421600d499cdc83dbcfa19c2f5b24373949c2a0e9308c897fa
Date: Sun, 19 Mar 2023 06:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679206445
