Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECB525A627
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748357994; cv=none; b=jUT/AXQtU9j/JXnNHToNCBGp9iSqV+OznXDKTWq7Y28PL7Czvd28q6eqvzLdQcwzaTXf2VHDXvZoYOKcXkzA7cjGrwJNgErBGSVUFU6AzIrK+h8R9+4WigElzLlcO1jcVlhwAmRnVKM8ROzH8VqQRSSD+jAPWW34ZOpADB01nHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748357994; c=relaxed/simple;
	bh=35dc/k1KZMLwB/5YmCF0BIAqRtfF+h5G3IXdJ/8C2Mo=;
	h=To:Subject:From:Message-Id:Date; b=dLsUV5IqW1vwcU72+5BhIE7iHMR+7oSLLb0u4DnxMWCotRYUiTm2WydF0SIqNld9yfWQXIW0wFiktevN1m2DVwbj94ZXvzAas/bTkaqat3CuVzYNpf6p1u8HKb91iUZBt1/EikNfGpuo3vA+X5VwUvHGvfmucRbn8cZzl3fT1fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlsPV/EJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlsPV/EJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA25C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748357993;
	bh=35dc/k1KZMLwB/5YmCF0BIAqRtfF+h5G3IXdJ/8C2Mo=;
	h=To:Subject:From:Date:From;
	b=BlsPV/EJmei5lDHHboIPBGdfvR4l2z2GQYUJZRo4CV+/vasimmoaqHHmAnvryyK0i
	 coQ5lO5Q4mqpUp6cLm4U4CFte/jwnoISJBORm+d6C+x8heM7HTx5YCV2n6H5biNQql
	 jZVGAb+/QlFwQaEjsxTqA89/hx7G5rZcwQdPFSOGfuMPl1pTzwqD05UO8ePzcnHzpp
	 eH20ZHWc/DIlrXxltt+NejwZ2ao1sQnZYf8W1i0zGjBmpsYIb9MNUONj5w443VBEl6
	 GrCjKUNSVN+JB6rFgfTipCgQNbhj3Vea0x5B1OQGFpa9WnGz1SiZiTTRWGwgX6Ok19
	 ZoUFrAhfQoG7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9DEC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835799360.9191.13139446781508555704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97514790a5572fb0e41fe22ea4b4ba1b0e2a356dafe84826ee0a12e76ed4b16
Date: Tue, 27 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748357993
