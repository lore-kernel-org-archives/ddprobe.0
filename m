Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFB47484
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6S+kRPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CB23C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698385096;
	bh=e4OaJVPsC6X+ijF0g7Qc2D0VOF8ygchBAMCTifIbyUo=;
	h=To:Subject:From:Date:From;
	b=k6S+kRPa658fegLikgX2BZxTEHM1afgF0ebEtsywXmUXnvws6hIqyEsO/9jlsHn5u
	 Olz7ZDppTabquGQwWiXoUpqVWooNEYBjqWz5NUEJo5Lm0zToUQfb2Em1CM647VlQoO
	 gz7rmtt3hotIiZ4033KHjuNS4gE2mpFcu+qv8GPQx7NKSRnhAuYWb9+VTRNoWKrTS/
	 SOgx088DYJjFEbbf1D87he4CsCJFY+rnFjPS/DO9SCo3Rnz9bPMrgTl9TSKDKQXxOn
	 uZt/vmo3AGmJC9VbxDlNz27aPS1+f7Etd7LhzTYpYiX7aCbUfODE20oLXl6AdSsto9
	 AGiEDsPwGZH6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9EDC25B48
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169838509643.12783.11526883970950411858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c73b7c05d915185f2a83dc08e21284cd4737d09d0e667cdcb58121f5d71e97
Date: Fri, 27 Oct 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698385096
