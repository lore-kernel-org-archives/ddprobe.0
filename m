Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E8C372EFB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776576454; cv=none; b=YjOsLaB4o8U2dM/BM7pusuIRjh8Gt9H7A3XSPm3yLi3De8Rr24lb6yudl/8Q7N3GkLczsH2YklVYx1nNPqwffir19lHRPHi0lwMp9Waah84HKlJ3cmUoCD6BbeomzG+duNteJW7CIoG5oT6eTZ5WiP6/J/n4yNagMxC4xfJ63tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776576454; c=relaxed/simple;
	bh=1GTQsRTaVua8d7t+cWGWWlxxS/fBN27PTGtFABU4Rik=;
	h=To:Subject:From:Message-Id:Date; b=lMgHwjYzwl1mvp9EP0/X/rVYrnXcfcbrHPaP9bHjbElghjL7eJSLgJfqlRrBtg0/ftGNPZ97pk2DnpjFjasTh1HtQeuajPfF6vReJm4ZATkQRrz9XNh35ng1khEJ0lapyJ/YhhqxQzu/GaFRLYM803N5Mn836qRTlsdy0co5qNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTBbVavh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTBbVavh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BC6C2BCB5
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776576453;
	bh=1GTQsRTaVua8d7t+cWGWWlxxS/fBN27PTGtFABU4Rik=;
	h=To:Subject:From:Date:From;
	b=hTBbVavho6LcV9zrCiVhuOknQgZsfVBYpDnf3BYK1ZzPqd1B0aCcu9imyApCaWYx9
	 IGwjQj/y4dAtBdtol8XfbVwTBvwLmbSS5wDUo5B0kP+mSkRxB9OqG4qxNlNXtdXL+8
	 RmdHUqoAQ4zsmYVPNlmJJA2Z9nRpN1RgB254yVeIbnCjzZhMO8ZUuj3Q/0qtV7yHON
	 Q4TLWIf68bXCsOTpoD6BrntwIHrBLcJD1toWo17p6YacFdJFHV4pp6Z4Is3cneRaSZ
	 jvcY9a2iRpZ2+3Xpd5vGAY/RjaepR/5c6zXNbX4Cw0KjHBX3zdgY09oVQS7Ou9pIGT
	 i9hoq5+dUPg6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5EDEA718B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657645368.8731.14491527391907226176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3783afc71ca61377718beba2b4d851e5142040c55099a660cc1cd4776c2a31
Date: Sun, 19 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776576453
