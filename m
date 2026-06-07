Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5262227A123
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780862074; cv=none; b=nmBVhmKv7ssWrX55OtF6yHX7nLjwVvn9H5PV2LudDVrqO3i2pxZctV/c6IC+vAvYyRrh6v5eMRe3Iz1oDSJ0xG3ewi73D1f36D7Tkba5c4Oynm+6uoiwHrE85mW05E6lWAyTdTPq8AUOYNH0hv4cCbsjGP/sXXMxDYWdQFzHxJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780862074; c=relaxed/simple;
	bh=hNB2K2JbLXqh4dWeHb9kZyOhc7Cnwm3MMb16/ROEPEQ=;
	h=To:Subject:From:Message-Id:Date; b=GD6Ej6jK5LtWV5xUIQFTfCddh1uTTUxkvcrfFk6JZ8Xk+g+go+kOVVium+0AgCe8vv0OGDzmae0WkDjbcswnloZCRypkFhlImr0n0YqfSz9+x2tNhFjUQSpXbnUQhnWwgfngTOYNWwjw6T72fi9Km8yNTq0/2AaKFcX6UOeOa0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sS4wCpZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sS4wCpZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43FEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780862073;
	bh=hNB2K2JbLXqh4dWeHb9kZyOhc7Cnwm3MMb16/ROEPEQ=;
	h=To:Subject:From:Date:From;
	b=sS4wCpZbfuPtBP20hTLumeRSrd6QIAvs0hzO9sY0TbnbpajbLXomw7Lgn45T1LO51
	 ikO8AjFZzXVSmanD3BcD3sCQe8sC8+R7L8F4VwYwY8jPevtzA/YvYbk5lnjTZrjYKB
	 bpKXZRSorocexKrD7VLHnYVkZjFGY5hXik2eVdML27Jkz5b9lhUZpd6OUgbUmRl7kC
	 7FKD8BcUqH60rxvOJH8Kp62jY3bg1lwA4WV0hzNQwTuxKO5SXlWsC4DPlK5NzBz0Z0
	 CCiykljpyW8GDHNUEJ/UQZwZiVIrUwmumX9hixL+riAAWmmePiDWL1T33Ay02XsHqH
	 YtFlrvnEHBwuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0566CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086207368.14322.9278168913721863359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20d7128055e68f2f34592f591e166c270a22062be5db3ab300f73bf8585a3e3
Date: Sun, 07 Jun 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780862073
