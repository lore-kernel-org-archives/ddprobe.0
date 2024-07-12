Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A4317623B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720807763; cv=none; b=dPaZY0kSMOrU3RkrJJRzWkBdbWyZ8fDaRz8beQVuGiS2TYeGDWwSMbJW/MTMTDHnauqRGf6Re39FzymUI+78Yw56WGXSWT/kU5f5ILuQ5iELRXYb7R1ZXHXHXEIgN+plWjnsv6iWSDqWgCcOk+yrOoCsJqe8iJLAMNYRJOyJExs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720807763; c=relaxed/simple;
	bh=oOw2yHL66yBXeVn/7XViOZjmvVqGBtbmgztStpJhswE=;
	h=To:Subject:From:Message-Id:Date; b=EdA9jjUyto4NozjPljkSbYtLrQa955++7MpoMbjO65hEGTLu+yYVKGaZUxEAJziEPHR5t1I+hqrp3n6xLE2wmdp9t7MDpmfcs4aVevKuf4Z8z9iCYYrh90LxZeKIatOUQvhb6oIxIuHwdw361I+fppwaf0vLTPQ3nOQlNr0SuJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6JdHQfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6JdHQfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F36F1C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720807763;
	bh=oOw2yHL66yBXeVn/7XViOZjmvVqGBtbmgztStpJhswE=;
	h=To:Subject:From:Date:From;
	b=s6JdHQfOjgdcnEScJLH2uhvJ2WzTxlltKsYM56rWUYb5Ee75y8/ph9v8TNnYnGaan
	 Txqv3Xq2wOUUbUMSKOzbm+iPJfkDs9KB4/9wlFNTiWg3wUdoly2LkLRspz4/HL+zEU
	 2jDeqpONNEZzK9bIsJdYbXaKezu+N7MHDp8+KlslG7iawAm1Cw6GyYmMMma31Q0FVx
	 BR4u7HL12qYoOtFHYwR+iF6Wltwz+NOGxzG2vnC+KOm5adaJYwH1nyeOZ2p0Gi/wOE
	 I0MwhUl0MGZGUeoCL92az2ytt9wNZcqqfwZNdnyITwIGZR8k1bxK979XiSOhUu7bbw
	 uxmNXUhGR9h9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB29BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080776279.15073.6392637807480078553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9dc30b76ba46d5d1f13b5f2747e9eb997041ea9ecbd08b16cfe7f73ede1fafb
Date: Fri, 12 Jul 2024 18:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720807762
