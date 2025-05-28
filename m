Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E51E9B04
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748405994; cv=none; b=S6NSyDHSk1a33uVKeXkfIsgFkA/pphYJJL+qkroEpREIxU3DhJxqovVKzOjxmfKHFXXUzbveFztCmrPr1e8nyyYnGSVnIjK1wT/3y0PXn/md9TJKGBzx/qzQVvpwH55jo1FBJLsBW/JzMyAWoR1msq11+gnoOxTXaW7t7FXDyJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748405994; c=relaxed/simple;
	bh=EFjnxjhCeR6CYH629f3+m3xUhRJVjS8ClW14j2bdmWY=;
	h=To:Subject:From:Message-Id:Date; b=T11vdha2t5xOM4uC6umZBGMN1Rc6KQl65996BnIA5zNeME7p6oL7KmWszcFFJ69ERL0tl+eV+vKx/xImuosEiUuKMloTWt16yc504hRve1SstUIrhyr4xHwDYlNIPGurLPn8OKuK+1jtKtVtNWjOEv2gYiV4B0kACCjzP84Kif0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1Watg3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1Watg3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA05C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748405993;
	bh=EFjnxjhCeR6CYH629f3+m3xUhRJVjS8ClW14j2bdmWY=;
	h=To:Subject:From:Date:From;
	b=F1Watg3MQbj7wwXJd3Uyx2pLj4KXA+8pe+jmcIJhNsBunKSNZwIcMIpMxI3mH0VLZ
	 nk8e0KYLXgQpsS8VxFGtPYp0ohfHvA8X3Lwym54wHw8uh/CYPc/qWPHwbBweorIYF8
	 Cp+QAkR5r48NtfkeKWL/ajMqQA56L3npQnlyXmN0ZqMZakDq+CME6obvvQAJQHioMY
	 gSnWdPs1TWq0ME3jhrs4oO3Rcl6F5KhBzQDHl+EvCjRTJE13xst0Ld4Ax5Y7VLsZBx
	 WPfO0oy5ARKQcWKebnt1l1MoNsSTXIim3GpgBPKV1Uj4G003lHfar+c8ZvXt9OyTvU
	 k+/nQSpub4nRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE29C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840599362.21966.13312390054402679026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74595e116c16a22c396a16ab2676d763243ad0ddfd52868fb4b2ea1ee771efcf
Date: Wed, 28 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748405993
