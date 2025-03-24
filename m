Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D051C84A7
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742858394; cv=none; b=AjU5qmwv2qPPgf8krphTHpMm+DQVm5TP6qj9roHCpLs6lpSvPK6gIPySk81T2S8rFYZNXFzsWtfFwuXNjpFnPL8iH+/uRoBDn6SYUvEBiUBS0eHaoadTcoZcwjHMcXTK3I5qSrem0g1q5AFsSpnMG+Qv/+8Jm17ePgfONMdQ4aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742858394; c=relaxed/simple;
	bh=r0I2WMQNXeS9dxZweDd7PQ6L8COqZXVULHK7/7zTMYY=;
	h=To:Subject:From:Message-Id:Date; b=qtZqQjrO+HqitvHHqTGqvgpQkAn1XcXTAm5VI0bRkmFcLGzVScGNjMTJgP2bKPeSDgEkF1G79YIgq4OmsHQizubnRCfaHgxzplDlwRtFg4atQ0qzChPdppIzb+kuuaLPnzzZX7rDMPKoSL446E4hnhtO46yrwlGiphJVbt4NRgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWfs+ST9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWfs+ST9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE1DC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742858393;
	bh=r0I2WMQNXeS9dxZweDd7PQ6L8COqZXVULHK7/7zTMYY=;
	h=To:Subject:From:Date:From;
	b=sWfs+ST9e+7eLV8cR9kAWTHY8kjPeuIhb/H4Q/AadR+uZzPlRKCwZa81v7lblM1SM
	 vuq657QOhrqfzF/wfddLl3vNaTp0EdBTcvS9mou+Tpqi88CkVmEVQ5PBvmaEbSyjGj
	 JOZI6JZRAmmPn9pEcVpcucpNDQE2mOUYx+JaFoGf/ncFFL+m7VoYpPRcTkR1txQLOb
	 AKAcVsz8shTmk0G7lJ7ovx/8jGmZWNbz3Gd89X2EERwcoZ8w6c1U5O6lN0U/BRYJOP
	 49VqwgrKuyQPJ9BZDz767itbU6YvCDx7VjIYH4OtJJ/S1kiYV02n9dOvGQpZD8hzXD
	 enEh4862wjvZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A25C36005
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285839359.29654.3122624942407227090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a6acdd339159e0d19431e60348da43f867471b27a21516447ca2de71baf121
Date: Mon, 24 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742858393
