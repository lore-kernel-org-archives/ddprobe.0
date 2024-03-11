Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133EB56B62
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710191297; cv=none; b=dTCloheJnHxRgUGQuJId6M8+h84AF9t+DZKiiZrr5S7h3Cq0Lp6nw3RB1h7GEsRUH2o3d++koRldQTQXQOHSEp7r3vh1DfjQIfboEtAqTZ9wIMFesBPJUbbNeYt4wjrQT6hYL1kI2Jelmj+KGZ7JABmb0s4Apo7HF47pTr7LIQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710191297; c=relaxed/simple;
	bh=whaOPtNs9GuxMWIgD2goJPVe0AuJoFfLPRSC+9D51Rk=;
	h=To:Subject:From:Message-Id:Date; b=jWD/tpAlSsuVB6eayrje6ZA245xdNT0iaBRL8RF94u0Bmf7iTYeMYPFqXRqNCi/ZIMrZZQeyCO3tPIMnYwojwKO21kBl9oJf/7Z0O4CppKGJD5cZjJTm+VYka3dZSX6GM7BxtpCQRWxnqBeMQ7Kazocns8K/1gFBw62fLPQsHco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N69EV7Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N69EV7Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E9BC433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710191296;
	bh=whaOPtNs9GuxMWIgD2goJPVe0AuJoFfLPRSC+9D51Rk=;
	h=To:Subject:From:Date:From;
	b=N69EV7Z8i9BaspDmP7MFFPoQp/C8A1a+8lNhQ5nDTMr38qCxdWuOhV83rbZ8NjLZ0
	 ZBf0rt5/YnfkyjK3I8Ut/yGhYnk3Q/5O5cPpMMdraGWCRcIxaQd42bBN/6Q5YK2+Y7
	 P11HrHXFQFkEwg2UfGWn3nQUO17o4FzLl5AVCL+QsmrQtg1CSY9hxaOFM41AIHV/nC
	 lIvORLr7b7pdz9+2mlMMilY4dqsRMnkVPZrc43+uMD+3PZhDZ1OfMZTMrq9aWB6LVD
	 5VJih4OF27w3AH6eFJhukaRAWtk7WK+k+l5Z4AWd0vwux6euk8Nhq3UCFeq2vs5a8P
	 yRTkRptBEFK4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66043C54E58
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171019129640.17673.16051117330451112210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99be873f1831b9e503e53fc0085a395a354ef892f45481125ebd734d1b276a6d
Date: Mon, 11 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710191296
