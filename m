Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1271F27F75C
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761334194; cv=none; b=MT9oGgNLMm9G0n+9D5x2pwSjAMRK+yCuuGHem7jVlT3XutV6oxhsK0JFXL3i7DrEYvigNuZcR3RWRwMHIQw860OeW8ffgPpOopjyhJ5vw4a5PdNYHp49gZvpwVWXRQv6UGBLMvHsUIIMG1BD7EVqKkQVZMaG9FT2oALekDCXWjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761334194; c=relaxed/simple;
	bh=nA+VZkkYA1T8Uw3Wv13OWgZpVx1P/V+BkvqEjdjxE8E=;
	h=To:Subject:From:Message-Id:Date; b=a4Ta6RTCmlnv4kH1pVkHVAIKVRh0Eh2uclfy3/zYkLg0Hh1FU3BegO9L4vwP1Re/1DQhlXaRZynTzahQRWMse+MN/E8FyJdYD0WyT0FNfT6zpKBNkvfXEkCybSbe/8HS3hQlVS7Dc32Oj/kmSY4Sf6wRyLJW3qE27aKDfJ7epsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd3K1W61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd3K1W61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4562C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761334193;
	bh=nA+VZkkYA1T8Uw3Wv13OWgZpVx1P/V+BkvqEjdjxE8E=;
	h=To:Subject:From:Date:From;
	b=Fd3K1W61RN7pGnwhKAgx7eC8LIA+jIQ6JJwXEmpQNkv+Uq1wVnnAwqyrS4nM//z0X
	 5dN+bH8/K6REa9n7cDDB0fh4r1EpVMZ1KoyKC+udhwju+WnFT89vxu+uIBzX/rPd2p
	 +ppyWk059rMnrgERCs+kdDCZgVDUSx4WWOHgEjmxXE9b4RNgN4tqFTB0Kg0HaqEAym
	 WUI0S6pqnRx8jfTZtRZkygGtIAjgLfQt0S7vpTZWOqNHxRww48axTVgSdmoTlXZufs
	 Jy8mrg4nP532qtVXKeQGxpefBYFJvJzCd729aRwIzkmR+4fbCfSmWmJ5I2+tGBfzJM
	 de9XaMfaJdrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94619CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133419359.11951.6672956861188199432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b088f684a2113453c47e0e89285837760750809993868e0716a20dd1459ccd9
Date: Fri, 24 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761334193
