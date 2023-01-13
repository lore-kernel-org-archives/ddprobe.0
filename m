Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16C5BA32
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC38C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673640087;
	bh=VVl7gp6ltO+u3OOLO2vZuYpeVQ3yjFk7lnuq6bmeyU8=;
	h=To:Subject:From:Date:From;
	b=jSlL/Ff/J6UNlBiUmZe2Vo2oYHM3rgjlv5HtZ9klrcuX6MftNERxGylI8k8PwAj5+
	 POr2IFBP4VHmFZhXuArv1rW14BQiFYr/3ud5m9Qm2qqy+XIc7sctJoCO/Lc8Kk4nQo
	 Y6fPKBJqHRbKsS5+t9dK796WnZGimAhkAJ3JQPsQT7X2Ed0nC7mnZ0O1yqdxVUg8rM
	 /JJtLAXb18wzVtpbGgd4H1OnjL1ANL92tMZX1ABaXhQgRqzYhfOpNYj+clCyX2u9lG
	 qeWwJfsC6gJi9V6yUCwBgamJU03bPaaNA142UrahsimNJDm064mZkXXAcc5JFbnUZD
	 8xocOQOoOhjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84A20C6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364008752.29849.6399999569193163815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f4363a4850bed10ebf7e0b3f054087c656236cfd5e56ee37910bfe146433c9
Date: Fri, 13 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673640087
