Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EE229BDA5
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760738394; cv=none; b=V2L3BLKubPhluNXI5D9EYVZ/ToJQTazYZo/P8J2zkyAoJYWaOw+FQwMogox47LGSueWKLqqCVQmc0YCefNts828qnXrlsF1PMc90H7X5vg0+2mDh3f5ZV58uLjrNu2IOFfAJ/Hqtibkxkx77LpfquaGJfC3oWDu0pqMjjUgmrDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760738394; c=relaxed/simple;
	bh=BdaVmQ7y5OEpepvXveZSiGG/0wry+nEV0bEcdfQAvxo=;
	h=To:Subject:From:Message-Id:Date; b=aEK6+K/A4JG2OeSdnZgLlqOIxE4L39USHun4K0uV4pKKF8DjSWxZTM2pCVu1tn9LSfHacCiQf+9mOc22PhTpTmfUwKPytztuU2ctdTIIqF2tuLihppiKBI1A4VvZ3jcLL/i6DjX+x4QHNk+nPRZxqK/bfDwX43EDQRihzoDPqEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcLtC3q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcLtC3q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FABDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760738393;
	bh=BdaVmQ7y5OEpepvXveZSiGG/0wry+nEV0bEcdfQAvxo=;
	h=To:Subject:From:Date:From;
	b=lcLtC3q824s8rvpu9kVMRDKtc8nUlW3bt00NG0FB+S91jHrK/kJR2T51nPqq81G1/
	 Em6i1Iv0vql1b/RXaZE0OJS0hVgMkqs0K9tKObA0ZzWdsVViJZzWpdynVv+n1l3GXt
	 iGNViuqdbFZPgSLfqqIf+ENCchtI6uMJyOum3gMmaYLk9ooA5FLGsey80zg2YX7OgS
	 JdCwhn0YTowY5qiYcxwpST8lS3Cs+cTmX0gmyhM9hRw3vT7IU/kIwNcV7d9pRwmLd4
	 xpLSgMGsjg4ZwtFlBfCtzRp9mTFDkB/T3wdJW8n/Ipf5oSG2zdBOUlWV3YK7g40OGx
	 qpaYrOObiKRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901DBCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073839358.12178.7917277362579876584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2de8a6310da5ab5844d3b0afe8e795df4d9b3fab880eac08f37ff03bd923d6
Date: Fri, 17 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760738393
