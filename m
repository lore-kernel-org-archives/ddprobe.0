Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCF164
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774829094; cv=none; b=mlYsWUgEUpp/1WKXfVEg+0rwGeK9StNfR5KIHKZv0yF+9sB3kvZ0H2ikCIbd3Ekma6o82KyI+3g4HmBDDxvRWLjPaDPj8X++X4HiWPCXN93wAkIE0K0TY2OIe8MMCCKhCpXQmcrEZnXvJSaxDR1nf+JIXnBrdeFIgP3GQ4iPKQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774829094; c=relaxed/simple;
	bh=Wql2PXOtSpp6SLpcwDjJqIbYgwCLLFi2Cq19kANQ0Uc=;
	h=To:Subject:From:Message-Id:Date; b=HUvL1TuaSZ7HiZc73tiauyVWkKBcv9850wtGP/aKOJR+6Zz/G9Hjv/FcESALPRFyT7E7ci+EXCOB/LicH7KiplteyF+ANS/QPht9gPb8lRK1e4bP5g2QbOR/7VYN7cxNqTm5yTxdlS6nZfIbF6N71k5vqEMCsqwGZYlKxA9chl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfcwOi7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfcwOi7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFABC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774829093;
	bh=Wql2PXOtSpp6SLpcwDjJqIbYgwCLLFi2Cq19kANQ0Uc=;
	h=To:Subject:From:Date:From;
	b=bfcwOi7jbRLlplPdCxL8f1T6PQ9kEV721hJljvGFNltbNPNZWeKlWntfLrftPWQGw
	 7zvbnQ3GwFQxSY3dLziKG8LFYE9SWfM7LTIwhltVLELqPRM3t1H7Dg73RkWEwYRVSy
	 b6HiaYwhIA+Qqe7WnWUZPgWXhKvba6iNItbb1KnWexnf8pVmtuBBVad8k2/HQrpNyc
	 WiaMxk/53S6Xa2Yfyoe56iBh5NeQmB9Y2xgjeFtqaHeLQhAMr/ehsXLmA2O26YQAjn
	 S+41SnTxfqIntDJjJwGRGDuTqE6/sE5iyapAH1aUAChSu6ciahAbE2d/bjlUziG+Y8
	 bg4nICbX2UF/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C33FF492A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482909358.11015.6154724348584944799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9152be3267c2e39e5ffdac3549179be0db583a0223d21674ffe821bb19003499
Date: Mon, 30 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774829093
