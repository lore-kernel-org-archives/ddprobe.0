Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04115446A1
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAQy+hmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A3FDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703675896;
	bh=VQ9qkitceITQ8nOYHx8btgL2YRDRksnvvIwfuGMenig=;
	h=To:Subject:From:Date:From;
	b=GAQy+hmAxgb9G8+b2AjWMlB7q3fgLs7mQqwTfW/wE8fvfCx4ePJFmuw1CybfROqvV
	 cqLJSu/H/aZI+LnjRWRR0JBGN5bYJksWi3tJgK0to6DSHy4s2pUaNAL9BPrsRJdxn/
	 x68mO8RYVkDaycy4C4XEQRInkrZgIxgyEETPCkF3KVBUk4/FbKukcReeJE8nPf91V+
	 OwJfG8D234OtOAvsY22xnv8PqWtkqh02wCjsYtkDyGwyCdKcAAQMtLuxOv8U2pP+iw
	 DhmjI47W8PDUTrqD4/PMTsSrlxlhBY1GTZu9QF3R2qaAET3a0+JFbkVxu1ccFZsIWI
	 Bktn8x/qh24Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A6CC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170367589640.14799.2631125190559152046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237eea716eaa1db4fb24c57bcadb741b48f636570d4de287a8a629baa6d23397
Date: Wed, 27 Dec 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703675896
