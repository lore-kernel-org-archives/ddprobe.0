Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED891CCDE
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 11:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB639C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691840588;
	bh=XxIZPaStRtfVWk+KHc2ngCZDcm/e2qEVRL7gaXQCNpI=;
	h=To:Subject:From:Date:From;
	b=J8Ja3FP/1JgolbT8kbRuxkMlpGZNbcw88WViV1xJw6d6H95c/OPXPCnwGlDliy8vd
	 txdO1A8tgHL2ZmjpkZv65/stmRa6pX0QVS2we1JJM+1f8dA13bU6SZjEiN+b4PW876
	 SbdjcPcaAiWupztqOJY4W4feNZ+gmFA2GaqtUKFLOAV3ZLBPLqx7+fs4q670lU9+/L
	 wVOXU2CJTKPp+K7DThx9mW+8XL42uxlxGVXZMVdqobru2lvOlQ8o6YwbZwH0iZquwQ
	 UAu255xveBaT/L2wHzialR+ubTqYJB5lsxdKIq+Pgk7yRiiklvM7FtTzi/t5W7Bv6Q
	 Am9GLOMNWrRTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EDC001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 11:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169184058867.24061.2475932690939752991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfca910a1078463124188593194f99ce00c383df7ec0ed113b8ac91f284182a1
Date: Sat, 12 Aug 2023 11:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691840588
