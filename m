Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C504DE732
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792410634; cv=none; b=LNnpzqxWA3yUFLBFVtxFFfYVx3/9X9OL/CL2HgTI5/cLK8TC/GBhEoUlKU+Y/V8LIDaBa/Nvcxk9KZtW+r9taxds3PZOKayRveAS0i1Cvr07a3d8nAJ7G0t52c+u25wz3ysEt5/fGI8uiF9/5IA4tkSKDvQOp+DpfVKKKZgD0KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792410634; c=relaxed/simple;
	bh=HxDF+k9xQwufJoz3SgvVck0S6s46uJa86VTxrGKGn0g=;
	h=To:Subject:From:Message-Id:Date; b=V1OEA+HhLkWZ+l1ZmGJj772iFEGjo+pb3dpzdRemkoXt4HI1ADL/AsGovzJP20zb58WrRDQGBGexk1vasFlCADuuIt2J2Ok34fCzKZFdSOhooMtHMcUaEHMD6FrWOQxYUCP4d1sAjIRYuMTisMF+FnsyjIOwjQ7b41XwodhZ3mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOyJl3m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOyJl3m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA1A8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792410633;
	bh=HxDF+k9xQwufJoz3SgvVck0S6s46uJa86VTxrGKGn0g=;
	h=To:Subject:From:Date:From;
	b=DOyJl3m9gOxCLxgLo9Sq7VmidC3IDc/WWVCAtJPaO/JSBKXte9co14+vL/pcUt97R
	 pBzV4cZw6n9FbEp4IdBzoqV5nGmNtkqUhi6JEKlXGTaEKRt2EhUsdAi0UKarTZ0SUl
	 0tgHFl6fgrhWvLHdxb26Ewdmv91FfqDtx18rPQiagPfeqXtSfNeTeFRAOEwsgpLCCr
	 X7pzlXDy1wuXxY8JumsnfRx1zX0Uq/9rUtAxvbKEZqMI3uSWeGZgrdtSSS0+mLKHwq
	 xChb9Zf+TU8Xw/K65xdDGZ3ZpGqQKOdxAs2qtcXwF1aA/rVNOlv5lHGeM5z+q55aD5
	 oodiSM9d/H0Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5B6CCF2E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241063374.18507.9994522307946771955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf22a00076cf14d2d41cf96c24c0b69614fc95b2d520ce366738e5f810e00dc
Date: Mon, 19 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792410633
