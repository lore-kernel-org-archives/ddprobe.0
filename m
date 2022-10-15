Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BBA80C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727B2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665853853;
	bh=tOputvjkDusC0s0xuqDGWXd5j+oc/alrK/cES8VhUtA=;
	h=To:Subject:From:Date:From;
	b=rF+hJGv4ZwiS62sEDC+804q7siD3WBKIhCU61wtGHm+rnBppGBzM2Zt3mqUeRswzv
	 lDDJiYC16vvIov/ICocpLrrILhinXY0Pc3O1QFSt7UXl+3MvX556v9neO0FAnVbRCN
	 MHhLTcRU6jKviwKMgqWBgZXa8HsUhhC0zS9ruJbfV118zNDTZhp/W+lTOlppHMw+LM
	 FN3aijKWi7BAMJ+eenoXXl1su0F8Jxk/Dbb2Dn2zWoQklNpy6tMzR/gqywIu3TpYZl
	 NkcZCaAhXdA8K149oiaNxeJNQqbbfS9JqMGjVeU0hIYIW4MIwW3CwV28XYJIfbxJuj
	 snpyftY6eKxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F81C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585385333.25174.9759028132449098984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57edff8e670d78a6b909139181bb1f45cf540b05e57a038ec6b543054d24e242
Date: Sat, 15 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665853853
