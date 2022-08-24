Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80CE1870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DE2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661367652;
	bh=Z/iZ9icCfZOWUjMavb8uDMrkvnvZefPoG7VCNj66ww4=;
	h=To:Subject:From:Date:From;
	b=gzwZgsPJbxnDG5tWkfrZvim+AdcoUpqid/dopXvgnJyhfIWDHfdEewvZaIDrq/mXu
	 eHYSrCd8oZDVMC8AKfHU27ZJWI10Pu0oj4fxsxKQAqoUK2XkTOXvxdBXT5FNGJzBI0
	 HblgU4znO9kelsL9y0/cJhLQRfrT2TifFhyu1TH+rJp9Oq/i80v3O5Zkv94R+Rc1/d
	 WZ3VTx45EvixwJ/DLV+SQLjeuUUJkJFsWfx5G8fUP4J37NCSnw1Dnrk70Xxbc7/xk7
	 YBX/DBh7DBFj/UZRh6/fb3n19zx2NlNSk7UZotBsfcMB12smj2MkefBPCW0a6jDhQR
	 wjLGY9Xw2CwPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633FEC00140
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166136765239.15689.1514287610104200495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f3e5803a969b02cd290ac0caa4373d7830bd316b928f1f733bbc9dd4cfb949
Date: Wed, 24 Aug 2022 19:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661367652
