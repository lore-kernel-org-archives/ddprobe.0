Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF70223DDA
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748984994; cv=none; b=WF3OiRzo0C+TpZcLGq9linS8OxrCX9q/3KASyM4JI22c/FD1Q0FuKNx9spj2B6yFh+oDxL2Z5ATLAxFYSQZf4vfAQgdHPNaCubsd9EPg6HaSJx4Tv0D8ZeEzWVLxly2QTvVSgnG7LXVI6sI0ULInIvvzaQkwPa7F8n+3p8IY/9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748984994; c=relaxed/simple;
	bh=DJ4jSpl7DEPrAgkpd5CoENFIwiqJn+de28C1z9EPehc=;
	h=To:Subject:From:Message-Id:Date; b=quTkCXON9ckc7+j9A4JeCsyZOTjV+FsGaHn/nfkx7wuvYokPjJOOFgOPaAnlh+/4niWVsGtdW3k6XGIme9p5irf85aUwW+Tf3FfMkm4mAaOJd/I8SM1KUHaVH6ixbrBiDHqMcTVn30jx0qv8glNPrEFAnOq5zhJ6QrAjKqWxNuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7sW/H/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7sW/H/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F930C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748984993;
	bh=DJ4jSpl7DEPrAgkpd5CoENFIwiqJn+de28C1z9EPehc=;
	h=To:Subject:From:Date:From;
	b=X7sW/H/vV8hoC6NgfOockFvVYJh0mairQBeqeDB5dPAmdrjhKaUmM2rPgXKBV7JjJ
	 MSvw1km8c0HPQmZCGnmhAGpqqu8QciHdAgn/FtOoxkzNGmiZ0ziMj9NYnt7RdAN2EZ
	 jRh5Ou6LdKVAd8bSunb/KjRlKhtTV5YHAtpELftTcqOK5QtEzgHcV8b8xVzfGUyrxX
	 AhC2EEapu9zxbqhnJJogGmtdpeexvNFpbZMOMpEiRRrz6ix+CWZCk763J7F5LxCmah
	 pxMEZqA3mzlrSabIGb7jQoJ87vKbP/oYhOeryivVzESszf4zlFS8o656CrHI39YVBk
	 Stmj7YlsSGRVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90546C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898499358.16650.13769721581216894275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08210477f3a7730d31fd10c4d0fbcb16a77e6a4a2cbd2811950b752206906d62
Date: Tue, 03 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748984993
