Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43786330B0B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786897234; cv=none; b=uM7QTwhOU4h3s79+odOBBxS1PpoSTK8RxlTRiUSHmKKoXOxImdrW1IDYHGy68WQq8x/UPHtwIsJz/m1XJ9XLPim3xD3palDpUMwCuOm52Lga9zGl1rZL5zWqK9S9GmhmTq2DDXj0eaK1ScTuCksm9rt1/XPjA+Wa4bdKl8Zxqrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786897234; c=relaxed/simple;
	bh=4ddNGV2bPcNh++CAcy7vwYxPNzMjmdNl5VVObF8cqRo=;
	h=To:Subject:From:Message-Id:Date; b=Nq+mArgV/DZsOQ6P9vS7ldaRGwPaOO6PhDX8lyikKVpYe9BWqPrgjSXBH/nDSgqP9Q3zlcWVPXv39vrW9QD2S3QaPVxvfquiiuCscb1FdkOCvy1D+mWWPIyjftkLKka7XA9NrgglEMD6popf67uet0vEa5fcztxgzPxUd6FlRIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwMqhrJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwMqhrJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C34C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786897233;
	bh=4ddNGV2bPcNh++CAcy7vwYxPNzMjmdNl5VVObF8cqRo=;
	h=To:Subject:From:Date:From;
	b=DwMqhrJ9L6Px6TmgXixO2kv3v0yMw2J+BNAltPiBPL0Ey0g0Xtk10iMBf5VUhjggw
	 /g9O9HYcxhJzXjup/JYIbYKUQyeF8pV3SskEIXm2HlGU2A+GcQ/yEYK6s/gMIKmfgK
	 qtivkn2ITbOskL5glYOe3NwZaJ8NijLCarhg/S4eXfNk1mNlk9qslztVlo9NI7UByC
	 WcGTG2TMKmX2g/2hP9hqBHdW3ziRb9jkFLm6FOvPmHIs8PWVd/Adjd7UXvQoXwS9bL
	 Zhu8TYkRWRXmqnVBuk6QWy6saKZpEOq3NfAVUj5HBg01BzFs8JCPVCbyduYEWFjBLi
	 Yg2JiU/B7Lauw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E58C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689723368.14785.11389932858890783478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975a6f968edd5b45c369538b1593d74f62be50d29e002a4bf8d7124bf3516f4e
Date: Sun, 16 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786897233
