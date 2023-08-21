Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EA11389
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7704C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692596048;
	bh=zr1/3r+URjUVLKaJ7LBH8dULAPt6EM5KJSp7ddg3wV0=;
	h=To:Subject:From:Date:From;
	b=NIGZnx+gVtn8ZTKsw9dVKSn9jzlOOy42BP4nXn5HEF6MtgwlJf1ibYcd5HzWLRtY5
	 utbjUJa/11lutScxWmy9cwLsYvAG7gxc0q5FGOemZgkrFGzN2X6W393ZzLEzcSkJPL
	 uSM4Ju8gPU51Cdzn7fP5RWqpmeBANhgUmNybII58mjN/zhk36EwTBvTdQeaFt8A7JT
	 Hku6UcF17IuMlRcLBMB20cqRv4DFPLr3iIDftulGRDBs5mDlCcjcms+5TrfwM8Vtbr
	 mYuHnnuacil8JTQyVEpOQP9mhE+YXcXWkVNO1RVLml9zS0n8T/QFk8+iQTPMkHQ7iG
	 9yrJMkoOLd/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA477EE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 05:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169259604868.16777.3837510868467830507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2d6581d71782ad3d62a05e126e40c023f32a6280a677e3c99875555b9b591c
Date: Mon, 21 Aug 2023 05:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692596048
