Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCD315E89
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710490697; cv=none; b=lCmfk+sBVpIlLNN1snS6FDs9xKhOjJkl50GYnvHTx1Kj02+Sq/2jFLuyZIcnwF8+XHscOi1v7YfH0A6jgASjEGAWqLxZfabC9O/cyH6V3uHue9xlme9zpBaN1yZUDtc0zYEAFF/onI/Si7S9Was4GPxoo70N1pzV/jGLUnvj3n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710490697; c=relaxed/simple;
	bh=JuxF6eqdl35Ng52/r7gNyVeKjZqOiCUWKQmkr8fPEEE=;
	h=To:Subject:From:Message-Id:Date; b=kRVMcd7JvC9kk3NKvEZYlEd2aUQ6Vw7mDuWJpdRlsg5kWBnEkEQ1/xce5+tSIAR/XR9sb6T7jFxgXN9I735/3rHzzEaVQTFXJrKq6dy8r4WOYHg/V62YNTjLnxYLxqEynqrbTuyq3+B/d5renIwIS0QUTWyGW5kvwJ5CP3EBn20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvG1o2AN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvG1o2AN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F47C433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710490696;
	bh=JuxF6eqdl35Ng52/r7gNyVeKjZqOiCUWKQmkr8fPEEE=;
	h=To:Subject:From:Date:From;
	b=XvG1o2ANDZYkqsYL0aHvWR0uov7OSBxdIzBIM7farFq0+Vqilx+bxVExw0tVugP+D
	 UgQHteecf9iAaQfROj8Oyu8X+YCyV4w5X2bNjols4PpN4GbijYRANrE0xbvx35SApJ
	 0w1x/By1ntk62VwWKbBiy0viWA+Wdhwr3EpcmlPMUGyDb7AzOiHQOitYfGobRbbPLx
	 SBO6t21xnSQC0OiM6zuIRQOhXnT9AAIehdZJ5WByB5QlM/lYryf6C9LbvJ3T0NkAOf
	 JgQvtiKdLwPUHk8Bqfl+E3WEkrajmm7N+Ot7SnFHu5RWInEpgMW0IHnunf33SnD+zX
	 e1pg1jqtb8fPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB23C54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171049069638.26205.10041833494989510939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb5449f7272dbff4294d678ab39284ede936fef81c30bf2ca50993304415d52
Date: Fri, 15 Mar 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710490696
