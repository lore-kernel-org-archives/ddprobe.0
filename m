Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370571EB36
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744580994; cv=none; b=hZhxlQIgXin3PjwRS4LVXEJuZfDg9WQIBZyBQZ1rC+p3YomWf6dDl9soSpeyk38SfIq/Tg+ejBV/c/7jghqBaG9LYVtYlZJs0THnJBDzTX3nDReyfE+UBYhfbTP1+YZLPPPMr6cTUqN+NTHWXK6rJ0FQ0zJwiE+blRFgWLAh3cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744580994; c=relaxed/simple;
	bh=Y3G9Kujk/lfKSuKuXMMmlOR0rK/begAoQ6BAfxE6grM=;
	h=To:Subject:From:Message-Id:Date; b=MfrXybWOYm4mTiOGPor7WPE7aLqyeVgyg/WPbvH7G+vBcZw8t4Xr4Djm4QEOCXpUwvVpcuGKWebhirUtYbb7tjoQOMbYl1/RiaWhPEZ+FTz6erW/kxJkLmlq0JU7rLb96A3M3ax1jts957JeaiCgIFMbEiRghlLlc8LnYZwDZeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRDDPNkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRDDPNkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB926C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744580993;
	bh=Y3G9Kujk/lfKSuKuXMMmlOR0rK/begAoQ6BAfxE6grM=;
	h=To:Subject:From:Date:From;
	b=kRDDPNkAxtKs+gwQrGaf6R01pquLigdyIEOSOZ8zbRBVUmJQ2/dft93OfugCxKPUJ
	 +VcQkpxl75hO3Cc6dwNYyN0KMLqCqP4QSb2bq7M2RwUaRxjCPq6LCNrijaYDJ1XQ2R
	 sAfbzSsFcYF/SKnDBZm+rVgIiLTBxo7N75wlQxbkakfeaOT6oH3uqesU/6jG68YFoP
	 4W7RDhKL2EJCuTnH1jARAbCd2EvsCQkpPsiNWsaQ5WUWoMlTPFMiUGnVABkT1m8f3z
	 0m5z2tzplS+Vv/mm36TxZLnFkxd5RNpr4h6Rxvr//5lmXRqjiYbD5bcORXqpZx3BTS
	 JptRYmqhiOc2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95617C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458099360.9560.739796265024808139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2cf61389635d96a55b4f108b2d75391332279ecccb40299ec83b5a8fce7ea1
Date: Sun, 13 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744580993
