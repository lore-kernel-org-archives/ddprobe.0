Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF3428DB7F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749853794; cv=none; b=jpkj5USUXYOYC4tTs+Xd1RVRLQ7LlU59XDovv7QLXEW1rOrjBZFj7G+PjdKVg3E7KshQgka9WpyVGBfs1Q69Ed+xqCMO1DrXUm1SVuFbZoRHQCjU+/kJhWJBpKHnLxUlp1k46kEEcvu+HkMDctljkRfL+1aSbOCFkSaG83wiw2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749853794; c=relaxed/simple;
	bh=JEcL4/Q1aYQxytXXhLQC5/akS7VPwjJNjP+tuYangA8=;
	h=To:Subject:From:Message-Id:Date; b=RnOpsfOizfnTgX414aRQvg1qieCDo8lzLgxOk8bGsLrvI9LxmtyRQmxaq1BmuyvPDm/wMliPVaykSyRpMoHYrVFtL5G6UazkSO/R20M70P0fwPdZFAT5EcgrnNjAI7d7ceez+78bD5pIxrE6PbqT/262rN8oTzlB6xHS6NIRDXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3O/wYm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3O/wYm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749853793;
	bh=JEcL4/Q1aYQxytXXhLQC5/akS7VPwjJNjP+tuYangA8=;
	h=To:Subject:From:Date:From;
	b=m3O/wYm2fXSHSYwqEPIz9UIJWynUA3uS9P2uXKv3bV7bpDOXYLnZ4mICcAiOFFa2r
	 brx+iY37a8BNvS1vZBEAtghP59StvAAQ/uD0mRKRyoZWgFvtnT8xJfSrCSZyRoab9R
	 NTNqjW02vbry3wiQhNnbcgCEHB/Vr7PzsW5Z47AKWlpBUMvKedIr0OQtMMGpmjTdkw
	 ypUFV1WZw9XD0s+BDlbreK4EUs55C2yOfFEjGWSsw01T65Qk6iKCYXvPrNLntIgGwo
	 +4a/cFmfBHq+581AaBlaOJnSkuXZMKTbSyVLsnbhLE0k6SbnB9mXTxeUzOnTA37KAu
	 HmP2JCUv3oKGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91179C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985379358.9033.3777432149684771689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266add5d290c61316a2ed5055d977dc07a3e3566c7799e3ffd0faa81ac42558c
Date: Fri, 13 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749853793
