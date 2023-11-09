Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E964315A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbD8wn18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D622C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699496296;
	bh=jslh6Rq4N8TyhDkebxrGKclORCGuGox3XgfXd8zrn20=;
	h=To:Subject:From:Date:From;
	b=bbD8wn18kJESR3F+s72qy1zg/B+30hm0f2xb5Rda0owgQYyjfyITvQD7hd+7QE85T
	 Gh0z0eAACHaMxDc8JKtxeL8Q9t6ucIi5KuhU52zwW+VBNA4uYbfmVgnRbVgGT5HbBs
	 h+vkJ1uY8Dqo+IKQ9WBfuqBDE2zyCyLbuj9qFtt1yUseCJxlayTFmA+LrLzR+If5rQ
	 np9mNPYcbYPOB+mz15HeNYQA311tA5xZpMVAI/npmqHzl7MfhhFGkpImSOFbesD86c
	 EKewPL/gZEkVpjG9DXldg7/63BwqFgSKFhS0TjIwK8tMi8B9ZnBM6+8g+v0FLtCn+J
	 W3P4T8KtTcE6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6212CC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169949629639.16296.13921963904764370346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2e65e4276fa1f6930aa72513c6492efa4bab6c7037fe17b3287e5d9671e992
Date: Thu, 09 Nov 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699496296
