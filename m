Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181954C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768554834; cv=none; b=i6lYZ8UdRQBcbjQt38QGTxsFNGCbcNXgPPccVOC7qgYrvz5oagbzMLgg3GMxyXbVoPLCCAKeUjOzCO2jRBKRKHGycamyP9W8ElJn8Cbp0Kr3tcpjO2aEM4mUUGkM7RNFEXuVnK50nDNZmb/ZBuMVpGgLDIkvnjcfK5oI0WKwiHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768554834; c=relaxed/simple;
	bh=Ixg8B7Ml+1/lXx59jbUEbKEohkaXA9LRJx06XEQvSec=;
	h=To:Subject:From:Message-Id:Date; b=knriKPZQgDBc2fHEwdpFmv/HUszb5s/aiuu86paRgNHmo09qHEcrjINvAI02pTfqsP/My2eFvb0k/GaN5YZjJDlPmiohRTV7H3eNZJCb7fXfbelRxMBtUQ2PtcZR/DssVS4NXibveKGKa3FDpSITTiglOAJn7r7K1MsKtcaiEl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCuAjtnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCuAjtnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E63DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768554833;
	bh=Ixg8B7Ml+1/lXx59jbUEbKEohkaXA9LRJx06XEQvSec=;
	h=To:Subject:From:Date:From;
	b=dCuAjtnfe0Mj63s6eMV4uq2AiA2ITmEPW2g6b3lWuKC9ViwGvWE9wymj93g/D4/M8
	 jdsH6Gg1nF9/Du1ttwBLcAMu5dPhwZhoQbXR5b8IyUvdMOMCGYd42zIkjWzXnYKeM7
	 dFokvph+z17r4UdNvbxRugEOGzIqJimD0G44CHqOdDrJVNijmqUGdyJKAb0w0yqGbA
	 pXx4UQ2NJpkMSkR08Z+GrYx03OomyTm4Vp1lYH/je/4pWxQtI6eiAfzRN2QweRtrtW
	 bkwCsOvbdvRW29e/s4ak1Yb3kfcaIM72GcZ4g4AQSOxp4l4PZ6aBDlVKX298B13mDY
	 Eza7ig43TKZXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DAD4A615
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855483357.12061.15359074660809869633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300d560fde8ef09f09e6a67356cee4c71b1e3b4fb24df32f8d42aad02cf47fd6
Date: Fri, 16 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768554833
