Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D2A15D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724B7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665498653;
	bh=g3N/w7J4XmKdNjnGC1AoQ26gDj+kk+qZdw9WZU/uhQQ=;
	h=To:Subject:From:Date:From;
	b=qvsrenN2+jZ+DhlySdk6MWjPNvIYKPTxahgJnY2eCrGHYR4pynfT2XZ8T4w0xe0NX
	 tisXzgB7ph2MaQ2tA6JCiYgCIzvdolB2A4UAlM2MGGU2N52GiLTumRiD0KyLZO2ITi
	 ocCY3zxAHyHLsAcwXgpaWeC9SpT2pxI5xlTDLyUx+ZF2sDyLyq/84oSDW+xS2VJNqD
	 IyQKeT8HwJsNyZFjnDiW80tEV1ov7GII+w6ZbxC0ulod7PhSdbgmDRRJQ02aCESP4t
	 OjxAAWapqUB01Eb63UtHIEfo+1k9V0n3UoChyXO1dUZGnit3S4iVYPPUMjJrnMsYcW
	 F0cusA9ACuFhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565D8C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549865331.28119.13910205595983024345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede41815a1c0d0e3ec2a9ee7f16c8c22add0064c3d2e4a02e0f3e879046ffbab
Date: Tue, 11 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665498653
