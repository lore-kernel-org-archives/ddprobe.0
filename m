Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AC517C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB07C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677218105;
	bh=trFtE2i1fdrKA7Df5usw3SJkWScBVxEjhVcOXemM4KU=;
	h=To:Subject:From:Date:From;
	b=QmAdrN79YSTz/0izoFaposV0tv/AQ+raz8ecXXXOcm5KwoErDWb8VNJFgDjckTLS6
	 PpeGG5xHW7RnKhj0iWZhrqTnnTwRgdcCwbF20sSliDckSanI6YGGBJcRAheyFGbBkp
	 NN37nFiEyHEqxVW/xwH5xpzf+i2JnItB8gvGbiU8b/cEi/PghGRlz+CXuCxhBUz+Tr
	 Jrf3pN6AjOjn0DuUS89TUtvD37omuRWRL1rjooSSz5RHeUfuBp457vA4sMTbukyfMU
	 aXTdCWm0t1MGXWboQxo5QgX8Oy//ieDSh5wMqarccAedTHoDS1icku8Q+SjFEHAX2r
	 b/geKTOKkIeFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42DDC61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 05:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167721810573.10972.14539292354123967189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b597c28c208ec8cc2b70093928690377dbaeb249d5ae4e5db84fa6e6e14169
Date: Fri, 24 Feb 2023 05:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677218105
