Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCCF1DE4E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738092954; cv=none; b=UpM1wqAI8aO8JsWK4Mowhn/gxbtCAyBZThMboNoT6NsXWaSwIl95H4PZMf4laU+rKv8tor+ZaUyDDpnjogFW1jkP9uIf1W6qxvJkC/hwDrWYHB+3o9b/cw43x6QeWxroHPbWf4uQGWlEcRy1dV1kVwQyS3bpIh283LgNuwraI1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738092954; c=relaxed/simple;
	bh=B6WV1vlPrfoHyuZMjpeyJFxiQm5+Od5haSGZEWSmR/4=;
	h=To:Subject:From:Message-Id:Date; b=Y7mC992NU0nTDdokf5OiVVQGyfwY7kxYT6hLv3/os6pGkcL7WQFoMy2SWedli0D+itlIccIX/6d59NxElfoWNLc7MgLbvqqJExsyX1VSY+PFPQtWS1VZB/Mfo1NU5qUOjnrCKJ8TrP1RFkuzBjGUaUUTd706Qip+aA9s43X5uHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDgiTNVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDgiTNVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6044C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738092953;
	bh=B6WV1vlPrfoHyuZMjpeyJFxiQm5+Od5haSGZEWSmR/4=;
	h=To:Subject:From:Date:From;
	b=FDgiTNVPD+tD1/P2uwYM7Yt7rUbY7b0sCED/SAP8yXipq6zzRzwMsJsslT0JOy02w
	 G9ARe2vdDCSU1JRbfrKzqUvRGSYpj2unFnsrTNs9dAMxtxUqwdeRzgpWssq0/w7WYD
	 d3dpaXH6xQRowEUuxMnItjiK62GpuJyKbGWLW48ngwMErJEI8HhlXJrX2F8BKUCJ41
	 shyzOtphA3Vz52WPcZEy4cYaYA5NAliC9p7zb7Kn1T0PS7oEoui9qY1X8XcWKNecdB
	 ekbNttprUCPsMYn/5Q+TQQ9w007RmsOeRgD+PaHl8H/CNQbUFwAriyqZHku3rsbl9m
	 UUUQLIhSEjeJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E54C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809295359.30193.6386051416852569622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e7028e8aad69eba0ede87761d733d7996a7138b5f6e3b306166caeb652bb90
Date: Tue, 28 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738092953
