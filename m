Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E0917FC
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FAF2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666359653;
	bh=kakswyVxDz1uxp1eOiribMbwdQTxgmE/SczISQ0dLXk=;
	h=To:Subject:From:Date:From;
	b=GB9R21QwSiIR0NIZRMLmB+P3NdoRfxr5Oe0uVI59JayBiMM67wpskm2TULJVpNyR9
	 VTaADQ8Ew/l5UhZbhTbxxj3eb4MnW/Y7JbgbSO88IZpJWNqX53LjHHO19Ifjzz3Bt5
	 4bQxW+iYL9wFSu//0adCnekM5KYVXIJIpI+ZE3hcoSt6Lg2zBJMA0mTUFA+x8i3CMO
	 R9REgW+EYiJt2fONts5CWVqODMdpGVIYJdwb5gZPGqS0n0AwNfFSgIMO/Bi+biZx2y
	 JY7R2XelrZYAi4QjXV0JKHqf80KxK4q4Up/SI+8j8b6iVmzJllN1uxYrfLitFOpOUB
	 PqJjzHSwnGwXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514E1C43219
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635965331.29208.17336180176238686242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c7d307f37b9e4ddcad6000419fb212f33ea5132b77cef212a0c5058d146277
Date: Fri, 21 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666359653
