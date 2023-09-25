Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C8D6FDE
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 05:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB864C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 05:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695621308;
	bh=koY6z0Q6Uss2i+bi/wSf37mX3yR0cP+2d85WXQIi04Q=;
	h=To:Subject:From:Date:From;
	b=nxqs2I4ruvkK4kXy35NjMq5HR1Vuf7lUQBwcdj6l0w81EGVki2HmQASYBiQjDHlbF
	 enrl3exaIeBWR/d8KdD6CEVrVQMD98BaDM5mHeyNan8mwBZy2i2NBBb1yKXru8CDeG
	 VoybFNdecGO/6xIEcHckORHmuw99XL0ZlUUF4JafBYGGOcfZ9A4Fw54XKytwD3Rlh1
	 jg7xU7QTaoIJ6nImERh1NK/zhXJv0gcB/ukxzLUYTsteKNsncedk7RO+jG5q9/Xh8j
	 3Mn0vrfHjKHlEtrkFfADaiZ32VWtyhDK7XEkiSWuWKCoeVgZbNDtIgH79Uc2OBHsJk
	 wDhF21IplD/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEE7CE7A89
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 05:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169562130874.14929.18308391710812260454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c5cba07957721b6461c965f282864b1358122c241c6f51064c60ebd4c09a28
Date: Mon, 25 Sep 2023 05:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695621308
