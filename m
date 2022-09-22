Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B943F2CA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67115C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663872653;
	bh=0/8eppZCE0p0szsj+K06jzyPQA0FtgJQj+Ur5HJ8K/8=;
	h=To:Subject:From:Date:From;
	b=qssJLWdjXN8Zgx8evofTGszMKUNO89Eqnmop/Ck1wYscYHwNlQ5zaGa3EtxOA1pJ6
	 ED/IHtqcglZrBa6uvLBCtYsIED6OzpkUYtUYFEL7aJhNI78bepFwC7PD4lmNQJ5SW/
	 cfDa2YWqBAtrEK7Psbk7X+9j8AQweugSMwXw3q+qvr4xit5ytIXuRTud8aw85pvJN7
	 YUWQeF2m8K86oMUpgeK0GXqBDfXVLfgca0ra1EnfWBqKX1F9C8/6PdbTrSW8YoZws3
	 +zpzk83TEHEyTfFqBe+sCvXvU31edH0GDQBQLeI4bDGdkMrmMAvNnW2k/BScv3YOuj
	 ED+X65gq9JjVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A77ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387265332.20278.11307130390558242579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affaa6896a12e8eef9e604997613002421f5efa768a7e28b42eb7caea8d81235
Date: Thu, 22 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663872653
