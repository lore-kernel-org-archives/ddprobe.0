Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542E7816
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 02:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3FFBZxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC220C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 02:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696819028;
	bh=ZLlE1E2qFg2w863sBCxscWvM/9O07XVr1kBF95JMcaY=;
	h=To:Subject:From:Date:From;
	b=I3FFBZxL3zlS2PCu5ZGGYJVg4iFaqT4V9Z8s2UdnJkvroRxrH6bRGuweNvb3MnST1
	 6Kq+nIHPjM/yP6ttT9k8k4xMbYlQbvOA35/cXHjNSu4JJe8+2kYeba8ZEGzDjbhVDB
	 21eb4Lj5yLZQqhSzJLQB5Dd/j8mrat4stsDLgGftvdY+hexJ1WlQzstmWvjdFhmO0Z
	 bO09XIS81WPAdVHE8sqwYo/HSBfCMs0FHLjiOsrUTimJJMbmUFAhFIr7uarllDvjN/
	 ttNoxEcP34GeGhzIjnR4GuHthWk1w4h061wFlf8drh95AUpO+jOUEwsakeMeXiQzcR
	 z/XxkmVc32myg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE38E95A8F
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 02:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169681902869.30686.13379809682002816629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75d41e808533efa82031e8956265555a90abf7f4ce5e383e82fb114245456ce
Date: Mon, 09 Oct 2023 02:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696819028
