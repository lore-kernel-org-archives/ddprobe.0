Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA91248F57
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751278794; cv=none; b=b6Rp/nVwWwmsthnczJJOxMBpqUhBEeKHioJKVaE2lRSsUDDXcqr6Viaj1bdH0YLYCNYlr+KQO2QJnEqWmq3YQK0Gzg5HKoeyem0NwDFxNolVCKmsoNPkkKazM1Oq9TrdseFW46hF+h2h2ceXH+OxN3My7mL4L++6sDHk0BwgXGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751278794; c=relaxed/simple;
	bh=09hAfrIAnXAACLwuJXJX2Zupc6BxkSx0K6c1LnWE3U8=;
	h=To:Subject:From:Message-Id:Date; b=TBaMYXcHtwYW5rKqP/unWbFKHcAGjAPtQXhcBiPpitiqR2fIE2EYotAw/zUPj9199irc6QcmDaaoQ/lS7M9+8bFY7gVTQQNOPKhhjYU3WJb0v88932WFmSRThvIGkR0nzbzlfCzBQKSjZ2ONplTQ9ySQcecZLTLSbdTp6FlNn+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVEAOiTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVEAOiTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751278793;
	bh=09hAfrIAnXAACLwuJXJX2Zupc6BxkSx0K6c1LnWE3U8=;
	h=To:Subject:From:Date:From;
	b=sVEAOiTzTESXX79RWi8vrF0DMaDjpbhG6l3EdNFuRMlk5PjSUz7uzEWkyBlkljgph
	 551MCJNXLdKEqVNLjzWCVMM4pY+rRPfPP6jOmP05hvnfIH5h/ILHxVna1twAFw9Udt
	 pEEOFCTsC4iwHjZBk/IgyDnrXPozIYXsnVzZFCLZUc/jqBOT3UfSIKp5xNqZoOKpl5
	 l6Nq4jPiPpftmtTFelkMgSgIub/zmBWZmdPFWho+j1xYozURg6nATw3cC5qrppFfp9
	 9VAxH7cZ4OCz9C213AQybfxvwIxTeW2FQA/3w+ZO6NPMR267S9YMn7Y0vgJfhHTjP5
	 WeMZq9tS8Fk6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907EFC7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127879358.18720.2849341109212281270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be24e606a9036515b534bf5471682519a0d5e7eb0819520fa1a0092cda08883
Date: Mon, 30 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751278793
