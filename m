Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F19E546
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712416697; cv=none; b=F/uZz8hFWgk5g1pxQv93K3/yR5Pq+3UVL+JTKXiMDk5lrBlBSAIS6/OnQlcEsLjFXtRmie1EE8LjEwnRLbmSCIG+NOjMKif0jDHuVri67GlL0ZyhL83lM4zLbeArVFFIGJkjb7PYNuDLQSm2faPO+Janfm9QpgOWhaJu32HT1QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712416697; c=relaxed/simple;
	bh=XLmYJ9rNwhgaAxJzB+5Jw8AmZCK4VPrdHn3G8HyNhak=;
	h=To:Subject:From:Message-Id:Date; b=LBxMnDekKBhzGPt2mxaEmjLTIVwMQLGoz0P4d6/guk3jWwRN+18E+XCgYSP00CYE63pXIC/w6/1fNu0ahdxwVZjpfUu+cW5lyKAWWUsK+GUsogTifUHRKK1M21BziGD4ieUmUrn4bJv6M29zN3WscrKGIdQRENEy99n72oEQyIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzcxBy0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzcxBy0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D2BDC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712416696;
	bh=XLmYJ9rNwhgaAxJzB+5Jw8AmZCK4VPrdHn3G8HyNhak=;
	h=To:Subject:From:Date:From;
	b=WzcxBy0uMkmBJJyoiK5YdXjhFoubSryv+kVCdAk9t6e+Owcfl3z9TiOGZ4DZAydST
	 soMByJqQ1sR1k97Y4tSYo84/994fmn0Z2Kw0yKNUAzFx29F83GtjnE0drXoR/0Twjj
	 G45eLw3MJ7R3Ve3qVMXclwz38bkWsf1Y0Tf+e4WT4aao3cFepjKRmWPvsaAOsiMl+4
	 3V8elrcKLt8oYYPke5EFaAwjnRPizFpO2KHU6h5Ws8RCqfWBxBRTBypM9T7pJi40uk
	 athJ0+ZoKbkZL1bPZ4F/VmZNBfVEfbB4D/0bJp0TqYMyr8QiRUyTMSy5Go3SgN38TF
	 P5+1OWDQgl78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7661CC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171241669643.6347.3383929482273365658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7fd0d868c726e765a72eca7284d09bade6e5b2a728910e1ccc2a2809f3e789
Date: Sat, 06 Apr 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712416696
