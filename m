Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343FF288B1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785142234; cv=none; b=OHzlrJ6b30FCuA3gbPvCpxn6I3X8uYXHcMXBOTA6NuQphIbnbPv3FlEpgjTUbJBY1z+v8y/vID8kqsYl7q2tKxCA/j2Gmhg+0SgC15JyyuhdSpD0FmqSfdhiOHuTbgMHKdZB/HoCUHpyk3yP9c9zak9iSe2y+OPA86pUlj8L3B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785142234; c=relaxed/simple;
	bh=ktAyKuIpwyTOOf+R6F4mGXeSHpADTy9GsLtZVli1PX8=;
	h=To:Subject:From:Message-Id:Date; b=UEU4wYStlYO7MMPGrxORdm+k+id6J/YBi2y2RcrgKJ5YzFbc9OUW9cv7J4IIrmQsv4q2yOzgSR09IMTxrcKUJ+xy1r7Hfc0pZVP4ZK2hNHPzWzuJbfcEHlk6iaWY6BZfOhon6MBb3dZ+v2lpqS0OGbse1ELB3ZpxKfEz7t1aQis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8YgOC3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8YgOC3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA1EC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785142233;
	bh=ktAyKuIpwyTOOf+R6F4mGXeSHpADTy9GsLtZVli1PX8=;
	h=To:Subject:From:Date:From;
	b=T8YgOC3auwx6SRr8U03jusvDqfc+JxAmp6dEeVmalW2NEjbI2pp+bRN9jkaZ4oKXn
	 O+vY2CXclalAZgQN+REdqpfqisIOzscOM86XtVI+YfM4Sp+uPFEpm7bcKoavnMWnJW
	 Y7Db7w9k+ISY2DL/U5d2vGvuCRZLlwag7k2g8CirueNtOqBZvFJDQ/6PY/3Oner7tw
	 qMbPHm0JDqAuwLxkSEZ1ReVwVWj39EA0RSU6IlitvjOLXoNF2jH100YIxpb9wJuZL3
	 9y4A7S5mL/rR17hiSWe5JJ69sKj9/40JMrpO4xTn8bBQ+krW0BD7YQIuDpo2OZxRLy
	 1kOFrC1HAFA0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8839C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514223368.24458.13586352598782248663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e165f000e1a2eb14766950cd9280c998f3cbd6378b393511c3fdca1d20623350
Date: Mon, 27 Jul 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785142233
