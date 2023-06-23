Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520193D6A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 11:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABFAC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687518188;
	bh=TGwro9caV6+PtDs38IgUjALDiSzgwwjIiwBabsXpmk4=;
	h=To:Subject:From:Date:From;
	b=B6Ed3wrEpdknRMmkia6lVl3N0eZkRXpDDeLY62D1Ft2Sh0F828NQWGL9Wrqh/n0tA
	 KNcBOiA4I0vpYxYcLoHY8FoK5t0FAkQnd6F1akdHlWNKCGwpMT8E0hWliiq9puYByu
	 oDyiiquLq9zuhOP+MTNZsn8afxVR5OqaSMqnodY4SwT9eIvvVmr9QjCICsyCCf1uKe
	 Hwe2a3HfFQSVDQQCwCL6QtomCPyrjwhZJCV5ySe5wy4dhiPEN6/EbEWrEbnGVHeHtH
	 W4Y/Exq/ouUiVakEuGEqjlZYg66/gUC7uIxsZzIdBcsiwIIQVkme5poFpjPx+OwEFP
	 mVMT799RPStlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC472EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168751818869.19706.3351707539686659360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259f4972392486a77e5788c9b0b8492f1d50bbb0b0d3780c35179febae338979
Date: Fri, 23 Jun 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687518188
