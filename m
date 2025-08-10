Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10ED917C220
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754817594; cv=none; b=s8So6NNUO2mfmO2Pquis4C69m8RQSVALWS6fU6ovdFnj5r0hNC5Wa67hc67sIXYqP6MRsR9b6fHaNrf/S2C8BnxNlYgcn26FHXnjYknTeUAwOq6JR2Q/hoQPDjUQHsobxrJkfNtu7lCtTrDHp9st9LivCSOa8swB7upIG62CojM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754817594; c=relaxed/simple;
	bh=nbX7QN3CjfJYDvISsS3LY8OzWhLwxnlhWOdcknu0Zok=;
	h=To:Subject:From:Message-Id:Date; b=in3V9KnIoecZcgGvFTnUhSlrxRPLsc0U0xi0X8M0hjq/3W0wmlMW/GgYmPnJJFW8/cF2Q8RVIfgybIZG1uz8Oa0Ep0ZSQ+v6PJ40E376avUGg0AUoJeXRwaG7d9CxDQredOy2K7zmSG0iE0+HGnXY+TcI9LiEjvipdIMFa6TCJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkozY1nE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkozY1nE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2EFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754817593;
	bh=nbX7QN3CjfJYDvISsS3LY8OzWhLwxnlhWOdcknu0Zok=;
	h=To:Subject:From:Date:From;
	b=WkozY1nEvPMaUKZSatpLwj0Z96lSgXzf0qmyLJBPkDolqt4hO2jgr6Yumfo0+1s0c
	 vHl+cOeHoP8AluWvu59a5ogyysj3IXd6i76SemObSUqYdF/fJ1wUv+PG7P9ayWo1tS
	 rCaT3WfXIWIfvrmnCXkSq6VIITK2KC6QBw4ezO0mDZCHtOC8fR85Plj+zDQYbS52RX
	 MKTvbxq0tVg45PQk5atgSU8z/ujJLOTbihJ9UoxmIYw73KVVd+Gi5Y+orhtK4ZuBl4
	 yKBF4jcJi36X5JiEmqn8FUH7Hp7xuM9QzLZDX1fCbB8wp0XBoWrWB9WFcR0B9awGlL
	 psL1e2JPPJVfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D8D1C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481759357.9766.10208357137789475701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c23791decf1f0895d6d08d2cf9910340e31749c875e524c67739ed406b84873
Date: Sun, 10 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754817593
