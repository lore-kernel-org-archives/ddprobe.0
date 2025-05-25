Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A62B9BC
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748153994; cv=none; b=Lt+qiIeZ8tSDXtDnH3tOAL0iV9ZgyBjQQZ4dMc7qfUReA7HyO39tF6jOqydnjf5kMl1mYjGmmFsXhPy9fFisFUzyNf5X0oi4Np6TCKfgCI/8RMW6DL5iOQ7LLC9KkDMUTHtXZPA4uZ2ClB6sON6Ug1zWu0KsvO3CK5YG7OoHu6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748153994; c=relaxed/simple;
	bh=TP0zve/OqpKZ4UYg/yJGobsCCqqU9ey2hu0VAuqM9dU=;
	h=To:Subject:From:Message-Id:Date; b=dPdrBw6DeupUv12u22a37iwwt9saaE3sVhlWWka8/G1g75n/lJgRs0Q22LwJS5rQ9cn1vnsmHnTfp5KEJtqvCM/LlmoXGcHtvzDdwmFKlUCFYHtnXowoEg+2F7FSy5t1039xVc2tDAiM8Sec79BfFLm+nz/3gUN0ji+cKzSeFNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1rSCLpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1rSCLpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9A9C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748153993;
	bh=TP0zve/OqpKZ4UYg/yJGobsCCqqU9ey2hu0VAuqM9dU=;
	h=To:Subject:From:Date:From;
	b=g1rSCLpw/aXAj8lZCjOLQmr70Ca6ENyEdwITpd3Kv2lPuZwHKM3byYa+2PW2mP+Cc
	 W5Uf9VuNlKssdDDnDvNKIeumCsP/yRnLlj+B10S10CK+d4o3olorLPJTJQxxHT1TEC
	 l2dLBSMbtOaQDBqlAzvp55CRV0+8p4Qgm9dQVc0rRnOBCg1Vd0Fl85W8CsMW0r35Yo
	 KP/SP6WYqS98pTAFQu2Yghi1Oyw3ResNwaVZ5mZlDqcYz0q1TFB5zyV+L7koKTJ037
	 cTzJBnoTYTRWxpkT1Ss/B/+w6oU52DzqqH+j4jKTQ4gpdCHIh9/ZCCT5MLRFA8VeFR
	 aQ6woI7UQXolQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9805AC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815399358.10454.11616472484121520306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bc172eddd0fd199e988b5871d908d6615fa5e001439bf2a86c1f68dc984258
Date: Sun, 25 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748153993
