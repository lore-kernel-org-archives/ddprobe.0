Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD776ADB
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7313EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668289854;
	bh=ApH4FnIdxc+hSZFV9s9PQALdP6UNmDyT2qTs29ou4xI=;
	h=To:Subject:From:Date:From;
	b=fl91bn4JLm5mR8XefnX5EKHsFPXKs6ZsG5K1/H7AOChi1+LLSB2AROd8ilZEhE56g
	 YQiHUyT8O2sv8+zCqQt/t6GqLHq17gKntQmxH79Sgulr8nMmC+AKl/SR/uBzDcdSz+
	 mj+iYNmP4QYOP4TiDXyeVHskl1ZPRn+ITfJx3PNHOvY4m5WMau7vHddzpjsqkyS1Mn
	 lxGzOy/sTwjH8U8aYMxYdQP0M/MOLRQ5pQzy6PTf6W8e8qdvBunYcqxciNOHrVE0Bi
	 ET914C0Mw4vMcD+mOlVjSs6d6M/6qAX2dAPhJqnNrmXT9ofr9lr/xx1bRjgTF+9Okh
	 b23aokVeF3xkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5664AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828985433.5114.11683113266725836481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff6e286cb1755cb2427e23e80e7c3d2b81cca65d1445eb636da8d1cc1ce2f93
Date: Sat, 12 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668289854
