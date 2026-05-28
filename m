Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B53DDF76
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779940954; cv=none; b=S4GheUICLfBCcFrb+1SOehkiWwfA8mqEALmeaWsoYqdxhCjOj4qfRFeTMrM2bUXR7Mmx1QUou64JAUQwBU/nKXvmaB+Lj+hrNO8d3XGFEaH8AZbqRZFvUu9BvnCSQgvzsBOi7i6h236CTsQD8NmOVpqMDbczKfiOWzVRhNmXmtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779940954; c=relaxed/simple;
	bh=kDqJzjPj0WNFvoVfo61/1UNU25b0d4fVUKffQOdTy4k=;
	h=To:Subject:From:Message-Id:Date; b=eTSuWEe/QT2aMSB6sxWsytofj7Zu9tPvdt0wn6MGn/i7LjK5d22xKUA4xCasUlV74zMlmLy3OOPnHnF/0WXjDoW7agYxOpio/Qr9zXaS6ysKqSezAYbyuX7jACGjboMmk6VFAIYUotsnJlkLMJbcocWwyEM9NRe+3ElKNR8bbwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hqr5siwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hqr5siwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C1FC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779940953;
	bh=kDqJzjPj0WNFvoVfo61/1UNU25b0d4fVUKffQOdTy4k=;
	h=To:Subject:From:Date:From;
	b=Hqr5siwPh6hQEz+HzNJcqt+omac9mZ4FDRw8f1KssES2BKBl+ilO43ZXY/2GkS8Pf
	 ZiTq+c+gZ7QEYh8ss4guo9dgc5H6rnDQxUPNa8Y9ep1sUCzwtdFWAy7FND9cRhFJ12
	 ocj8aJA7ejb+1L1eRt9XwS65oKQnSxTPeiZL6Gpaa9RU7xWXNxtQF2nYl6MbqBI+C2
	 QmKkm7q8Gaxv+wBIDsLu+pQk6AqTqwIXxDi4r58JjbCiAAIvqtOvjjiJDIEOPDLFqW
	 tJMJ6Tjyh3xPL5hiwjSB4uSqHPRLqDUNvvf8Ktdp7XJRtyJ7ongznvADAo05l06krO
	 ESDZCtRIcDswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A5CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994095368.9133.6259188646370035017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee07309f4328cbb263fa97a4091095ebf458493c426bc9a6af4f40197674f57e
Date: Thu, 28 May 2026 04:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779940953
