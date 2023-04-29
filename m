Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0102F22
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 13:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8418C433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 13:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682774765;
	bh=19W3cKufg4KonT8NjPRCmYHXi9iGK8Jm7hmr0dUuhlc=;
	h=To:Subject:From:Date:From;
	b=MOJ4Ighh0CdvUNpz4tSfut8qXqPYsXmC4iOZZq5CHwX5WdBeqaNuc8zeRqCA3GxfC
	 gFWvf8sU3o0rMmdQk3uYkGBC9e3PqGTgYtcb0B+lXlWT3yYirXPrWb7TTgFOG/tfev
	 RQQxcm24VZdVdSBF2wsIwESC+04kRW8sYDFYDBgc6UsuLjVINZxDzILWXf7GBp3Bfw
	 TpB+WdjDnw2lUOxw2GCM7FXCYEXd8wkyTnYMMKKzvfzCTo1zMN6VxNJ9sdbogUpE9d
	 kPXOEGFnnh/aLObU8AoAXFA5Oi2oX8f2URoDD+yxLwuhnkw8OXBqUQh8ZLqY4J9c6P
	 vxNhGmyqsR9Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB433C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 13:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168277476574.10052.13866894926119253459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552e714ceb057783354a5b9498827e264f71bb7c03735b85eb9652e729ad6564
Date: Sat, 29 Apr 2023 13:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682774765
