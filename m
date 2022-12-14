Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C287B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87047C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670986887;
	bh=Jv5dOyFxz6lFTmoW3ZijOwGaTq6DcbdHLq9niFttPWg=;
	h=To:Subject:From:Date:From;
	b=TW5OrvS45zTEokPeUm7gCUwSwKphDcdGzre46+GJce/44vfAWF0ohiNujXKzlB9jL
	 qcwQJ8966RijcnNGHKdkGioZ6d/GTgu5KPdNKWzt6yoVqiZdQ0hBePQcm2mtPPUp8d
	 haRzRxDt9RhAvrlGYbJjAc8LlXCNQwrVZR7tAx1K9vjvy1ydu4nFzHWJo0peo3/ANH
	 MZAP3ER6q0Sr3WgP+BNq9G2uj4tuOGUQuyFU6jaqJj+XjJamI60SHbEYZwVfvF6vl5
	 ply1zXpaz+0SNuRHe5fA1SG0bwTr6RZziPczPk+gc9ntt7NE+N9uOtvJzA1mASFb4m
	 H/fQG/Pp8gNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3C0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098688742.27906.14362797434022777172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c42a80c023afab5181d45ecfbb20967d40250c9057a1b05c7ccd0d0c7b168e7
Date: Wed, 14 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670986887
