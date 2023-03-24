Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C0D17DB
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB64CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679629805;
	bh=r3h8Tz6iijWdsWZkzlFzvlisswEuvo8STHs1XXEbLyM=;
	h=To:Subject:From:Date:From;
	b=GFu8Jki5RvvD5f8BelPbaDpS4PqM/s5z1FeWV5PW0nvDtD2wZwSIHQ9HInYmYUnxt
	 OUO/nF2XD9bGiqnbO802OwyapZEnhWxaniJdbE7XdTB5ukxmE8AGMSiQm9IyUUrGyW
	 3JmhtN+kwZl3YUo4UgfbmwTyaCEueEsIDHsq0awDEjOudyJBegETNNAdTagBQHnJ4H
	 ow5g4eLfDHd8CWZT5IkMPiTfByzxW1E6CJM4kE+G9dsONURcmpkovTFqnrq/GTbFKw
	 zoW83ykv1/O7inD5H4fdzU0/SSb1hnQAPyZvzw52/ohWsYtBI7nODJRhBVi7DvoGsu
	 sYKnUR5II4l+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D67C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167962980574.21498.4605091781982498464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0791ad79447d4e07b08dcb57905c1151cd1a0efba879b7d875228f877aeb2f68
Date: Fri, 24 Mar 2023 03:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679629805
