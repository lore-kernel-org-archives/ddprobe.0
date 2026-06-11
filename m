Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23488306776
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781157994; cv=none; b=ELkJNEb6F9uhge03a9EXspipkI+wTRm0nTuO0AF+3ens2+C2nHvhw+5nB5vXzoKM4pEG8tfFRSf7t+xRG7yNaWHhgPwGg7nESYVB6xkB6HnXFSoaIMlm2ulhVRKQ4pC9k9seCrbSDyteSmLTqViFTGKdYMNfY32Yd606y9MrF4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781157994; c=relaxed/simple;
	bh=T/FMYyPnmSZPAeXkbGwFNGkAtV+rwSlrEOzF7ZTiqzs=;
	h=To:Subject:From:Message-Id:Date; b=ux0qtkku3vdCJHMDOMxWgjZXZRzOSvIuuOqP7+am4IOOXUpWdkxPqPqs5+vw/FzNh3zUx2CZiI4KHj6hhOZvk4bei9Ex9KabL93uDK4KsBzIIB7tiYHTVz1gd55SSzJeNQBR9aS3grH1TAkcq4n9i+ixyEanzC0bDFoPFxQZIPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGkMxPvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGkMxPvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9DAC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781157993;
	bh=T/FMYyPnmSZPAeXkbGwFNGkAtV+rwSlrEOzF7ZTiqzs=;
	h=To:Subject:From:Date:From;
	b=HGkMxPvBuVjZuTSIbgWCp2oRXPVH44zdYYfBy+D9GLXq3phNah+8jaFTx0e4A6E9r
	 RwT5AnzOFK/eUpSgUxuOsC8en2fwiR3btpCKTX9zsDhBHLMl8OFnl6MvskqjeFk/aH
	 M6tnU7KGGbs2Y2SUFRGhY3I7aITPn24RVMUQwbBie8vPkPuYKmDfHUmcWXHccZciGn
	 MYxKBKWrxha9j5wIZNuZ0Y2D+EBjjoYHCPAydHsJH8qWzFl45nXHA8Bqttxs5uOOez
	 41wqCeGE/IRWK6aBgzLZORMlrwfYr5uZ5t6iSAQoN+EWiZNDYy/Nx9YleghB1i+z3U
	 A1gf8hoaYrH6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46D7CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115799373.25497.1430196546510672365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3862e1bbf984bcaa97a37dafa01053acb22bae42c92dabed2039cfa3b089587f
Date: Thu, 11 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781157993
