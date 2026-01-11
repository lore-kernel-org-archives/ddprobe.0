Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA451E5B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768152834; cv=none; b=QjOsXxp/Cmu60eGt7XRFnR7dqw6brWJsvy5WqghKwCqv/jrY1GaVq8ctES/kHXIPo3sXUhQoYbRs9mx8ULLNHLAtsfxGzkAMm5uoViynBXoOVa9lgQIGsNDQbTYjW+kV8ZHXv5MQAYDW1jJIpYWY5MFZJUVxWB+VDSXjxlNCwlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768152834; c=relaxed/simple;
	bh=WaqTxx2E3OYThIkXId2QrVrcJBvuJt2IjF0nRWKHSJ0=;
	h=To:Subject:From:Message-Id:Date; b=bbeuRxpFk0t+8UaEWXS9kpwQ42O1nkf2KpYmWi5+WNWVmMP/eo3/BoeeIiYQpeRI4wpUUNUE0BlVSSCZ3LNAAf4caK98gXhBOhxul3EaiBIQ3wUQzh4AzBk3O64Us3JR2/5U5PyPlxGS+d8HgA+KXa9jwUz0s2zw+Rs/RIxW94s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWhwYz8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWhwYz8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DD7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768152833;
	bh=WaqTxx2E3OYThIkXId2QrVrcJBvuJt2IjF0nRWKHSJ0=;
	h=To:Subject:From:Date:From;
	b=fWhwYz8iunxaNMXgFGDOuA/UPmpjJb74ai+lawv3EpPR87hHTKbzC29XBnGXpII8k
	 7L3UMYaN37QviGbx5LFXWO9biGPNkNe/zOTGI+Rzd1Xu0ps8RaRLzYr/ZIXUlC8irc
	 g8dhq6QJB81A0h5Xz5U04UkBut5knEsFmoB0F0psSDLE+gVomxuwB2ATKI9L4IJ4I0
	 2Gh8G17+q59JXYvIiiQ3Os4ipo0vhMeIJf12njHQVLQ74KGnCnNrovU4yzHeqNpnNr
	 XTif1RbU2c6kVnl1RvPidG92plxdum0fvQBsYeKn+BrT7wo7wfrisgbdPePswuZ9Dk
	 zH2WFBaLa5RVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B6D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815283357.13850.6251538370286561580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535e7fb3ba628bd8685efd422d2148e033d47f739822191f612f918d5679e4c6
Date: Sun, 11 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768152833
