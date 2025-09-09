Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FEB34DCE1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757446794; cv=none; b=qrczisHT+tKzJvr6dGRoM3xuLVGQD8l46zSrOCW8O5yCcgqBPAkJeC44bM2Xt7mY3ZipGw/PigEFa6j2lwkozVYm9cuC7JID86XXmnKrdLPeFq2g6DjsMDykx69X/t1+JLHBLommpFZeYt7rVPDOFiZgczzG6nu/eKimyH0ZcPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757446794; c=relaxed/simple;
	bh=HCaXGkMd4aCPtfud3ViC+ov4YvAxprrKi5nKwdDhqGY=;
	h=To:Subject:From:Message-Id:Date; b=Q4k5WpoR81RNIG9gsb8nmFrpbMsLqDEFlX+jrrFYPVO7a+4pDcUgP9iKqaIYiIx1GE/pKqFLqnvt9UbMnzspzNsPp6S37jS2yT3bRtmBLFcEtg1AgsFNIVDosoCzO8wkAVqAQ+7JSyZLsdzkX4okqTTlBBDA9bx/7SeQl3CVYZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7hfYfmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7hfYfmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2917C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757446793;
	bh=HCaXGkMd4aCPtfud3ViC+ov4YvAxprrKi5nKwdDhqGY=;
	h=To:Subject:From:Date:From;
	b=S7hfYfmYwdMF336MUiWni0pemc2HemzWe93g2grRoj7HP1U4Q6+abUTpNs+Na2cko
	 XvSZD29AnO29xCOmMx9rGFEM2+NLmOpMG94wSyJnGx4feefIIxM/QXa/KT4aNBepwS
	 1j3b+oZFKDNOOH2JmMXU2VqUfKsUkVWCU5wYGM+7OO8d5M8lKSVT2ObyiUMMEfuKqL
	 3OlPzy6olAb0L32NChDdvOb04S49wy2cG25oYv2mTacu65eaUNn/7SdlYowUjdFm6t
	 ETfeEC8t3/1gC99QGz6bGKH/1QDeH7FTCzF16uTsdT+zMekF8hndBAjzk0hcIgEs1L
	 kKimuiw46lNUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA14CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744679358.21641.10604454759404199435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d26a485473573a47fb28c4ba190420679bdfa983fb752c4850f67c5bc39789
Date: Tue, 09 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757446793
