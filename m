Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C3C138C
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 05:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E18C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 05:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682056085;
	bh=hb0BrFwwireJ72nlkvsAThFJBg0nNXlweCf/CmLrGv0=;
	h=To:Subject:From:Date:From;
	b=XHRzcsglaKkNgyU9hbgLk92UqBekMc+q5yxtxVCPa7QIeOGU7vOiBELv2BJXG+IjC
	 vr8c5AFF4HAv3UDlZFTXBTf8tSaaC4COZVBKQIwBjiUti6pXhyfKnET3kboIPmY9Yk
	 SaMT6S9qOD4St5KHhx8p75gyjSMmqSzEGEIgmSKcl+ZMU+UqUSxfB5GP9CqVE+6O9C
	 K5IFaCmuS1E+1v8PdRExYepq4slwm/PzlukmAEJj+j5+WG123OSG+Q8XZUPxgjIwSe
	 YX09e6VQnEEOD0j8M566iA/wO+gdFzKZd7bfZEfR27qfySff8L3dF9uWYULsEJFxCJ
	 LSw3C9KBhZjKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6226C77B75
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 05:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168205608579.27548.2244255324230624215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e923a55b5eb429f3a9770206b60ec5568380d797c5e140b45e67eb6db43b662
Date: Fri, 21 Apr 2023 05:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682056085
