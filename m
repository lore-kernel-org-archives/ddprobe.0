Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB9A21C167
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754382594; cv=none; b=Bhh1W2ccO8my/AtCHj6pAn8T6R4stuNat6+U8Cz09L8Q4zO4ZBztX1MynUEcP2efclGyysdbKHHt3fi/ZTmx1dnWFqnQiH3xzOsumVzcldJHT2thWoylqt+iovLZGAFkFN3a4qYB+SdWYRMgryVXXOjCiYv5xdHAnR1nMMylD6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754382594; c=relaxed/simple;
	bh=C9nk0DLlRz03CcXY631RMZTsU1pPXhHp6Xlg4xlKaJU=;
	h=To:Subject:From:Message-Id:Date; b=dimXfoAvQWHPzVqlNwO8RcYrc3EeU/YgUkf6mBepilw4xp8aB+wDH0FQSoP2h2HmGwDaY8d/sDtYIsCGnPUPtRxDqiZcBUPZocRCXg3joHDB7GA4TlvWmvb5wb2gSS/a/o6J3EwJWzTOez/A4UULgMyN8U5zP8LZeW9UJRY5Suo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2sr6hc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2sr6hc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFE4C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754382593;
	bh=C9nk0DLlRz03CcXY631RMZTsU1pPXhHp6Xlg4xlKaJU=;
	h=To:Subject:From:Date:From;
	b=b2sr6hc6AduerxtO35bxThPEApgq+t0kCjdxx58is+Z+fMeLDLDlBS8ay9QN7uDpp
	 AyJZyvJ0+dRN/b8X4lraOJ91PxLv1NmtAexNTGWV1RCYSKZylJn3zM01ibUhl5jq9W
	 VL503qhOzmA0UHgeIhLGYCxFmS8q2uUC2wHTnBc0zXvGrQWqqaAOgpIRN+mX0n+qLX
	 0MpAEBVekB62r6SCqQrg31jmEaODztVGSi1pCUcjgLL9ZkpOsEB4QkRx14laorxT/x
	 Wib2j6qP9LMhVtTa5VM3x8LCHic7/A8rlCRkh6emuP8XIF8bGVx6cvg7/48YbH+Jqh
	 QthDh7OUF21uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA08C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438259357.5063.2862440439143403057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88e02715ef31c7f8023346874e487dca682a9ebc74fd4256ce3e8a47b146601
Date: Tue, 05 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754382593
