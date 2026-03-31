Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1175E31197B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774968894; cv=none; b=sVH88CSwqwHh284MLfbzBDX1+RKe0Gb9NdbcAonrSJFZkgCbIw/fBh/iqifS0bOHcFrwErIcxstLKCBhSKh5O6mOV8xQJ0b3F9z88XabxJdoRyXY79VTwNRcPTgbO14Uc0uhCZ7KnFA4aHYbry40M2p94kVe4s0t+YUU8EEbG60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774968894; c=relaxed/simple;
	bh=Fe69+cQwQfyPXQcuxdbQim/FJ/JS5DCGV5QWHlIHxaU=;
	h=To:Subject:From:Message-Id:Date; b=X8RzxC7gfFwjVTXDW1/Hzq6S/TXH8jPvtcMPQd8BC+Rq6rqXv8l6tjvag60RVBYXjUCq+xyUPJfGx/PI49I8dE5WQQ9G8UOUCI3OfUzXIioRLqhvP/adyuHzRnx6okq1RlDBNFmjEtg4aCkXecIsHtMQCBGIlYkJk4B0MQPKdDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNlJhaSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNlJhaSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6403C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774968893;
	bh=Fe69+cQwQfyPXQcuxdbQim/FJ/JS5DCGV5QWHlIHxaU=;
	h=To:Subject:From:Date:From;
	b=VNlJhaSEG7qTdCKFWNkmdwC3R6d22LJVhzhJ+/Sv38mSn9ADS21TD5DzuidJT3kuN
	 Pv0n0Doqo93nTSufdUb4n3eWWOThfY4qQKxObZpg/7UjUIfxYe9p01bO2Q5R4MOc0C
	 hTRZ21BBRTXrKnnh7K1mV/BM5XmEL1muluU9y0HPDVc9Yt6W232cl8UYAkxicb9Is7
	 rbGO4SpR3tnilSlj3D90d+b+0lzitMwJbWQZEXG00OQsZ0tglsBmpEm03VJrDC/CAk
	 5csVUubCguXVVtACjqCTdsUwGkmSE+i9MYHHGbnSjtfEnZFq0G7YD4LuWUX0zkymEq
	 4fmrhPL2AUVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96310109B485
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496889360.10824.10854941714545774184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5cdf4b9eb3b11ba56d76e37d8e80e1fc79689c0fa7b4e0cc5e5a996eeb58b0
Date: Tue, 31 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774968893
