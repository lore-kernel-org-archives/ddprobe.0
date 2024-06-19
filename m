Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ABF2139C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718768363; cv=none; b=lcHusR5DPsABhHJDI2TSQ+0FY3YgUO9YNYinJ66BeLq4Vc5NVE1U/JAGBNtFevQIKhkoGbPdmeRxCbQv3YiHSc+Ich6auECtQFKUyVTITe3uZke8oPk8xeSyroVv/EfizAz0VlU57P2ZauZrRGF9XQBBZCm7EzX6ZzJLRPk9wJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718768363; c=relaxed/simple;
	bh=SgZsBQ7EO+wtsIFpCzr/O2dC720azXfhZPct1PNH6sg=;
	h=To:Subject:From:Message-Id:Date; b=azfgpLt7uWLUVAQW4R3wr7dDDnKMLP58udfsYUjQ1nGz00llh8QeN3dtBwqPgEYkQI9hTQ4hy+FmlN3hCErbpnLYKabpJAQdtJZHx9uj/SB/YmCbqEjGaWNImDHNLSBLepFAoEZL2BVM1DWYOZ3hQa/0mKDOJQLSVFZ5Ksfb3ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEPVuPSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEPVuPSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03ADC3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718768362;
	bh=SgZsBQ7EO+wtsIFpCzr/O2dC720azXfhZPct1PNH6sg=;
	h=To:Subject:From:Date:From;
	b=pEPVuPSb/mvfnsbPWgdVtWf8G0bK4hzHl4mRXQGPtY/9Q1MMEj1NBxk21WVFQkRS7
	 gWf3w9PEi6YguMhxNe7kEgVVU0xSXn7Wya7TpxArZf0wFAv8Q5pG1W5AlBr0/31uC+
	 yzj1TdQArIH3uvW6ZzvcOvXH/lVzckNNm3haOV3zYb5mhI5b/jhFBiNK8RhuAvrxAA
	 EH8y4+f2gt9bxHxGemFGLYpwEIjpXXDcw6zi0WyZhHytE/VkI8MhlOKKbjkm81ZinB
	 T3L4BPEcGzAfWWJJ3trevFyF/oyDQFHxUDOE1CmA4zF3nNJenkwkKbZ6ab6Qpf2wSD
	 CRmdBnx9PemQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD760C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876836276.25278.10011670669696140573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52723b54c3233e5f45efc1deba715fd2631ab17842361ba053cb179bc7b67f3
Date: Wed, 19 Jun 2024 03:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718768362
