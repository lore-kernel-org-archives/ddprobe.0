Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC6F186C
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E1DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691656988;
	bh=EYHk+KZEEhFxpf26AwRa3yk1lhMDzZy7L+DuwnfXeJ0=;
	h=To:Subject:From:Date:From;
	b=bYpkU4UI+qhy0gQ9dsH4gK6YzQj2KzqIuqrT6ELA+AYD3QxaOl/dV9UJoG4uJ5YAm
	 OW6pgcRALzKoLBKFtuC1TjRboOhcytF3nAyXx72s07lyYRR9lyXVa8+CsjPOZ/U3kF
	 hWik+gSPQl68lYvLGEuP9eDlU3irTGe9ddDvrP4iJHc1bRWriqUghd8FhjA7TayLwo
	 XDR/u8DVypsO6lVKMlSIHogd0j9kEDjNauCBHUm1t9BW2ti3I1xij6RXPzJvZir91X
	 Aw5GnpeNh1Kd+Q9OVru5FanljbkYK18gcRxaXzra9PLfDLwDjetHXms3QFgXzWEwLE
	 8l//zCK++ksKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908DC001DB
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169165698868.27424.17543959688639803769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac42c92968d1cf3b22985f338422297adb01eb0a614ebaaa6da40f537884d06
Date: Thu, 10 Aug 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691656988
