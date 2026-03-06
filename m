Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C1033BBAA
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772819094; cv=none; b=jXHiYPfQSf7LQPrPnzMX/LFTPP+yQ8+gLeImWED+WG6uLqTEM2p9P2D/1YF7Px/00cbp08C6x+ql59oH7RJPhr6eJhit9vVFYicNshyjHGK7v8lKXG/xP0+T/KTXIxwDkbotmP1pI+t/0Xncs7rjOVcCaQzfY7W7irXBI6SZ21M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772819094; c=relaxed/simple;
	bh=TCIJAi6Irk8gL9v+FiQeprOh/AtwlQQ4cUuWP/10Gt0=;
	h=To:Subject:From:Message-Id:Date; b=U0EwzIxJBikI0eLxWbqphdcaoe4e1Si+6HUcHeV9yTC3kkobtSG1TJbA9Le9tQqxeNObfrOlAadrtjwW6QwGfsiTfS+FZNoQJFFd0ct+1Sd091FmE2NnwJD42EdQib0WvDqA3dJ5GPrTw7sG1hpXcgtzItIkF83MzCyGXd1XEgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SX7Ei8pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SX7Ei8pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A701CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772819093;
	bh=TCIJAi6Irk8gL9v+FiQeprOh/AtwlQQ4cUuWP/10Gt0=;
	h=To:Subject:From:Date:From;
	b=SX7Ei8pdC6FJxKmvowGehvQ94bgjIZnvXpScZY5CWLdfVmBU7LRU2vztMyDqSN7xS
	 RZHu/sDf7OkBjyjPNTMuXdZO5L1vUjOJwRhAuRWYBBbI3LWLA1+94yXtbkaCjh6D+z
	 652Oohd+3TpToh0Q5fxTNyw4Uv1uZAawP9vzW5n3fZuXyjmg2EsrCmI1aTzE7CuHoi
	 +92I41VEcEa5lnx8qket57fkLdDSeRKRBYxtGeR3BV7Bzl4n2afjgXKRVKlg0m/+Ti
	 li/S9NNkzCsnEY7EgU9HwVE0vOlG2Hl8zxZMGPw8QVJWUtAWsrY5VbqNJM56DSxoao
	 Zx1KJ5gqo3JOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304CFCC04D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281909359.11459.17749448278702263278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908e0f898e3ad8a4848b5635e6464cf39e538e449571156d594dbd4b0908040e
Date: Fri, 06 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772819093
