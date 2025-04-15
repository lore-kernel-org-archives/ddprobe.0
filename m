Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEA219F13B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744732794; cv=none; b=bvgd/aT+ZUUUoHpTZYkZnbUzCq+dap3D6G8hk/0ER4suRih/6SosjWjjl1ZSN5iybof2WTz57rExuROflWdHY0+VZ6784d6BBjwowweGvWy0z3axI/YOhOqAoaOqEj4AgBHPcF5YZmehOcOfNwli48asNpKj3EcjJ6Gq1+kfwzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744732794; c=relaxed/simple;
	bh=2g2f7rk0xA+XRzDbu5tNeipeyXe0GNXp5J4Czggm+zI=;
	h=To:Subject:From:Message-Id:Date; b=vF3E6ktgx7qg2SK5HQwcoqeNfi6TiMkwccwcueIgXIiFELBJTQh9mYBQ8o5B4mZnG1RITuNgS5Sm7DmeCQTSWJn+Oo+ctquHqlyhSVhgYUIBwuEgj0iqwqCvQDN73asCyubWRMAAJIce3wFVyZO7bWQxQZWCybvKdlRxj8Z8grU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlIAqZNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlIAqZNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744732793;
	bh=2g2f7rk0xA+XRzDbu5tNeipeyXe0GNXp5J4Czggm+zI=;
	h=To:Subject:From:Date:From;
	b=WlIAqZNxiNCUMRPuDHSTquEcMa+scHpetYV5FvgToWDE1bBxQO9bizVuIvN5iATOx
	 t8FW9Lfi7c3ReVJGXHp9ds7bgyjEUdU4JHTuoyd5eW2JOpi08oW/dWyzt/2hl3mc2P
	 fQ/+7+JLAyaIJ+IU6BTKHZIg+oXsBw76vz1+HNC8DaMCkWU50zMs4p/+HWrMD0o9iJ
	 vsnfYXpixkgdlMWCEPLt7aqIj/BEwb227Z+7mw8fHwTZTEmc+WhbuLVoJHuG58kc38
	 YwXVYFfZfUqlp+go6AMuQNejIypt9hbYakpr8BcUul1q7JhGnMWH1Lr77EKEZvvPWi
	 qwIcbnLm0oVbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C92C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473279360.6674.9503048426097892409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596b345a69aea80c03baa610aad606bee8029f842be39f2849c5a0b6511e7613
Date: Tue, 15 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744732793
