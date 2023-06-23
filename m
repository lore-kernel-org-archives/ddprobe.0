Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0B9C2FD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB19C433C9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687535588;
	bh=MoJcz2MKl0h+Zz5NX9u44455x/1zFD1LK6yyYEVjU5E=;
	h=To:Subject:From:Date:From;
	b=m0EeY+rElhROzrdPjoZcrUnSL8vingOXbfifi5a7yqY6zIlU8hrWzRKvIWhsU9oP4
	 4jZ1KccEqGv5e6xdkD/+ZnMkSZjPcV/XZJ4ntM8n14STElu//LW2Sw7mCrAIkSIrCb
	 APU4zzGTFlqdic+mgj/VTJobFf3qQfp8mbGUdp6BQNNtYOaS3KTsgZfmoRVwcV1hMp
	 qHerkx5CR4+vMd392kuSFFvbo8rFtis/AnXzzdOTnHm9mSxhmlaLRsxcGcw5WFxvLq
	 ye5o24OHQNB/zU3wh6fxtbqtBSd6DzsBkw9TbQ+DuuAVEL9lhQwo0Agk8tsgIQEIbI
	 XSPz/rSgAudWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88CAEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753558868.8538.14781279767977496763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca9f9ba34b17bea915b12c556121a48c7c7a84dace7aa4ec4a2ff2cca8acb0d
Date: Fri, 23 Jun 2023 15:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687535588
