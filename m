Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1998D364CF
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbRg4cB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD3EC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704871696;
	bh=WIYoMJ0Wy4h9Jn3NHJW5HZP+DsCnqhRhQrW6duvTZPc=;
	h=To:Subject:From:Date:From;
	b=VbRg4cB2e8cUBAYsOXNwS8glfw0KeaqZ8mglYBHEM3pAnfVqtL0BuJ1rgj9P5+goP
	 fJcCHvaje2RyKSyZXu2dbwBvnK6JzED9MGZXa/Dws6NHRqIFIutVdR780JisMin19Q
	 58l3Di77Kfg/F5JZfjOUoM7PXClA1JfhjfAlcKee4ZWhCXEiD5hiCujkvuFgDb/WV5
	 +EBDyVL0BcIvk7tf3WtR2jdydIOf+tzEdcgjcX9KB5CV6kzBGJjFjgZmxacltEW7Zb
	 EqGiQ3qD/J98Ww94j19JmfTDVh/pkvnx2cPQgOlA/CZZrwU7/Zu5eHVQXl1fJapNkC
	 aNSMv7WnfdJcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624C5C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170487169639.12049.17776202122739293231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29edcc220e135e6d0e50a0fbc871b76d11010c6a47dbcb785488aa0ee6b1a4d3
Date: Wed, 10 Jan 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704871696
