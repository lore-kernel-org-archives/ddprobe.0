Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D365134DC
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGv1szoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C42C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697208428;
	bh=hZ7nzKeU54rTbO5poqYb+WyEFMAXpqdZEfRDR1cRF7A=;
	h=To:Subject:From:Date:From;
	b=uGv1szoIY1yCj4lvjfZiFtFAIklpZ1mLYPPRNv81j17F817bfk9k8cfO/1rkPbaeD
	 X5umJad5MYqgij96yb8AUJpihfPenIrvu1vJk1zmSBIsuD3f8XLtTAmxppoDlRYSKI
	 dWt1dQiEd6/Mkr3rS5jdjnCW/1h/G+N4ydOHLEGMHl+8GwklfdAYbo9w+IrKMBgO+D
	 cNgG52Vj66tdMKBd47NcYprzOrGWikE+FwxIyo81Tt8yf4M+buZnPFb3klkfa4bIFg
	 V7wQZyfvcKxa5iQ2Ooeb2FZGY6kujTjIXk5bSrc8Wy9c9iDk9n041DN9bA90Ju+kCT
	 jdhdf50Ku9irA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67A4CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169720842873.12275.10576158778326645653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370809e560e79993121d20c7c0b903df720c5b92c8e5ad8dc3318cfd78e6abf9
Date: Fri, 13 Oct 2023 14:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697208428
