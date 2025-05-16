Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C744B1E64
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747428594; cv=none; b=ooEWD4qP7bdKboBSqiviDv/8/Uqb7Djuhfl/jkxQi9vHua7QsXNmcqxb7BHxRwCDq/sUQ6DIQcazez60M4/F6ZZFP4IkTbcb+Zl/SGBeDWRvB9f5Y3S0UrMGZjNqeJ1kXimY/V4ObSqH4Dil6tAKapJfH6zUmJuYYrENPEI67PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747428594; c=relaxed/simple;
	bh=6UJ2vNeqFp8pMg19vjNXfdkri2BsxoP9YZ9wr345Xc4=;
	h=To:Subject:From:Message-Id:Date; b=qPYArJd7k3ZnYNnADkzTAnGBoSGGZOpkViwma0+okZWxwztXfl/scVJ5aKbcKLWpUThtjmJ3bENk93lY+5nHZGtMxGCzHbHsfcPTSkD7ScljjWOgNCuypyWRjeblLCThqvnsSEXm0FzU748t7/V/JnSOmLtgRneJ4fKm+73lxu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFdl08VJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFdl08VJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FC5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747428593;
	bh=6UJ2vNeqFp8pMg19vjNXfdkri2BsxoP9YZ9wr345Xc4=;
	h=To:Subject:From:Date:From;
	b=FFdl08VJkNWJuZnUV7HLTf7j9HWlWR2Mzj2XDfwZKzrj1v1IAeVFNVfXgOBlFxYDl
	 ORONTukTlxLJpWBzruXJjhP95FHdp2rIdlb6zz1ONJ9RGukLSCBl2pes3HovK1n7tZ
	 TjDm7EEQN64D4mCF/txWHAUYoSiFo+KTflQ8XfkTDMy+S1045Tf9VZ0Sp0Gz+0pxW0
	 KznM1f2kjJYvaI/eFlDarKEUE7qQ+vclP4z/DgNzPuCMF0I/iZh/ocP1iwpzqjRtID
	 smKxSDIFMll68/yRbjYoV9djKk/9UQrfYKc/WmApzESMjwlB3TFCzLS+wsDkKCdZwg
	 JjFYcFAsBf5cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96391C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742859357.14581.2148281587728762137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3220a5b64ce44659794be9928924f356da13e7417a70c8c0255a113fa95db0
Date: Fri, 16 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747428593
