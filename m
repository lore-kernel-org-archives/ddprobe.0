Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A99714D6ED
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723911954; cv=none; b=tJXPyVxGyNUc6YRKBpw6/Zgcs2KeHx/4B8Nh8m9cF6dIf0T+XTb33WuvpnYZu5MgLKqxlbFBgUH56YSfxtC8Unn84qaSxiUgPSsZXg/Xzzi4dVrk8UMmzVS5qjLAEiSZszfAvvdsl2OyVlgHdZitR+JRjqsQbk0QTbKcYcA5d4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723911954; c=relaxed/simple;
	bh=+D3zkkrktcx3Ltu+pJvDfxJnakia03GMSx/nSaucK2Q=;
	h=To:Subject:From:Message-Id:Date; b=Z/74XNPe6oq7VTszmnbMjE0PZ2pNblNyFySIaWC6fH3x0ixUK9H+XYlCRCYckpXBkNPW3e2JpS7QTICVE6/6RSrEIk4apUaQn7BuDcCRadkaw/ynCiEWKVcVecSJgUPjDqtVr7Gxo81JQZzaFnDg/3ezUQPH1YQqrYBK85XYZyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2SXRqor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2SXRqor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4C1C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723911953;
	bh=+D3zkkrktcx3Ltu+pJvDfxJnakia03GMSx/nSaucK2Q=;
	h=To:Subject:From:Date:From;
	b=G2SXRqorUQpHdnGadCFIdZjA1v8gLHhi528ySYVk35WOgZtExjqH3meJmqSdCd0jU
	 /HxTLHBRtlPC3k+BakXCt44wwZeTn15EyGUzBJ/x99y7REmYKiDqwjtxehbXfDZYT0
	 Dfipku9vjQjSLG3qQtIB0i2tIMa+WTLueYm0G+6TheOwA9Hl0rmXc8ebC7ysnF8CWb
	 AKD0adf9RsayeEm23dU05chcfNlVzYoq/SgvWOCJL4GrPFrZRTCE7hYehsb8eCFeMG
	 l6KeYUDT2PFLItnUkAk9WDceMGwx157eAIeshgnUTbhSshfEPYa+LxqXRALVJaGmIU
	 fUybDmZiupw6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC272C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172391195367.19200.2323718323410332965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201e49e57ca7a5d58dff436c62e93c78b7b254238c1d385450172e72a29d24aa
Date: Sat, 17 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723911953
