Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D542111F
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI1RqWci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D511C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701685696;
	bh=qh8ujoLy+pGuc4e3jpTOwgF8pCuu4FGHy5T/lI9BhKM=;
	h=To:Subject:From:Date:From;
	b=LI1RqWciTJ9Nc3nrMOxp6466cBTs8CwVEHHjd+uDsGi8FXWu3kojIhJPMY6nH8cKW
	 US2A1fEOoUCbHVP/lK1Ld+P0IQmYE3tgzWU1W0PcT3mxLuPMLD+SH0C97Bj5btcqdu
	 BOBSywlgdjLEkI7twg0WVmlYYUPSf0JPRZKmv4fhNmLSQqP7CFHn/cvn8jtckndLcd
	 wo61zwKvFQ+62fQ27iLklVxjTN+olKkK9fHN+5CUUYHZt/svuAGoOQBdKUChaQyNfB
	 ANmDICyDN2G/veW+4sc/Xxefuv3zAAfxUHjIutX8SoF6NbexEtklO+THsKvq+aKSoq
	 muLqJpjx2R/WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AEAC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170168569639.9473.854748106456526205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a2d2ff66c2baf40bf71e01017b3ad9b8299d7df1e76afde8036ef24839a153
Date: Mon, 04 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701685696
