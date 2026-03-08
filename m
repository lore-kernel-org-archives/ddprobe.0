Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F72821D3F3
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772944494; cv=none; b=Z+AUfC5tpXdilCJg86X4KRjc+Bj47HdoPaYleMYLK16yXijfUvqTqQWExB6HLilTfPQfBcPU1ckn1TzXLJ6hZYwaSvd4tNBt4sRp4rWTjwnLCR94IIiXgnITYbwnx9zZFBYHNnuAbO4RNxHXjRHg0fVn3k1iXpNVIMI5vZ0/6wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772944494; c=relaxed/simple;
	bh=ayjXFBZ34IFM/lMQ/mUlO8Cdnt+4oPzs+Y/f57EPnV4=;
	h=To:Subject:From:Message-Id:Date; b=RmxEyXXbM1wVHe5XTTk8MOGnQPcjT+alDzSV3G8aTj9nYOqS/HIZoHXcR/eV7KgZUWSL8otzIe3236fcqHSOzikAJAsTqQXvnNbt8lM5t1S9aXphuAsIrnOj1SZiejRc2Hfp4kMNlbOhliBty/DhtcQkguaeikClkDEdPM5enDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJqQkGFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJqQkGFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772944493;
	bh=ayjXFBZ34IFM/lMQ/mUlO8Cdnt+4oPzs+Y/f57EPnV4=;
	h=To:Subject:From:Date:From;
	b=kJqQkGFZNwo8EJpwkiJEVf4AOCvHikMmrN2mWrlgcW1LH1HH0/5sLllnI5UVVbSbR
	 YiM2HPTi535BGEaRuRpiuSO3i/yBqF6qHcUGAKyKCVdYbC8gKegDE5pbRBdWoWGxUJ
	 CxxOJEqg9JWK4RDPv+DrNlLTj9IowAPPx4nKaF3qdxgmBa6GkmBjXI5vSv7zAFDTtp
	 mi8150QFgSfsnov1mkwrxqXyNrTo7jRhTPHlpXD7q2nLrkOp7iHKsR62XIMVfQIupe
	 JoPmCgX2L6k5COFBJ0fQFYO3l+bIZ5SffyTzlrruQV86BMgYVNOPvwmuo5V4orBwfp
	 IayoMjqAsdeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F888F55107
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294449358.5969.11490802496548121797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a4e5775e816b57218018426802cceeffb4d59f34f31ba99fb955cceb0ceb57
Date: Sun, 08 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772944493
