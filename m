Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44F53F58C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786382434; cv=none; b=czJpscuIcC8G5cKmkDFI6s2rrOSMIyq4cdD2DvfcqsHFpWUMhw4MUcnK+pfiuNq+rJUlEdh1YWM7u35Ic4mETTHDQE+t4yH8T2zKlsr+VvDYIF7AfkgPys1tRVEi9w2++Ezx6+Ug+jgk1vtREqKkG8RTh9BbsanHv07xQYQZaMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786382434; c=relaxed/simple;
	bh=QXskrEfgIBbvUP58+8SMiMtu0531i5Wy2vMTgn/bGTs=;
	h=To:Subject:From:Message-Id:Date; b=LoOfaflK08+UFRA97r5wOdf55/YOoh+G+bS9tPLlOyaD/oLt51rGTG8+9ySOV9f/E93ACQYY9EVX5ZTCa4q2+gdgIrySm0K9s8UZKTiJHbVHcBZc/kyLOQJsShAqBLVkmyDbC2qj4G+37+rrOtuc1KIhp/bcLdpTNcv8o3A/mHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrP8Bv9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrP8Bv9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD19FC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786382433;
	bh=QXskrEfgIBbvUP58+8SMiMtu0531i5Wy2vMTgn/bGTs=;
	h=To:Subject:From:Date:From;
	b=PrP8Bv9G8WX/NdZr2coWtOdB38/y5deMbhEfkPKWebo0AUf1oXYI53JGhvHGOAjxQ
	 sJiM550wlD0gTxNH2JEF7jYudiAZ10SwOfhd2cOPGg2uA2O0e8EnW/Dcz2phDMu4Qj
	 hQEPfQ/aamrTxRvr2f9k9Yo0ZT2SJcakiqvNXc6bJgB0zpuBEJQC9tLP9leCzuh47V
	 xhRZFmPs2fH6VW9MpYmRqfiGvG45dThMw/aixRxpy+oWxnptqJQIGu/3kjvzTG0DFY
	 oJb2IjBCV1rNXKnDQ/1azR/d+3/c7WLY2DB/bk8TZiAptaa4/9kdNgiHqpkLlNVafD
	 EuaaL8JPAtuuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B587CC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638243373.32647.7108090936481280851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be39eebae2340c3244efdc9e153b93439746b39739f6f3d3bdfd90a31c297576
Date: Mon, 10 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786382433
