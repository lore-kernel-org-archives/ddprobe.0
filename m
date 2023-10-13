Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC9C365
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 02:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e679t3jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB224C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697165228;
	bh=vgu8PhOx52G1JrSO8CoOlPfxLnNyo1vJ/097zoCSTFI=;
	h=To:Subject:From:Date:From;
	b=e679t3jdXbGpBaUQsnTJg+LSuxOah5wHbUnr/YlAn/fqeluDdikkOIh1obRGal/DV
	 UeO6wfZ8L7IKqUTuDiWPFKDR8fKSS2oFpQU/fHty94eSgYKvNGloffoLI9v7Ypab0Q
	 +gFXSZEqTY4zudOrFRBckPN+vTbQQ8DuaIDZNalnI0o/a4930sImIyWggs+MLgp0vF
	 MP7xgt2yhPxk88YzHuKFjvSzkzffmtdn6JL5mHdf13+DyEI9wl5HGETtXLo+2a+dko
	 olCKbeJ12yFZd5vVUuH86ih7P4qLEcL8NAotQ2V0a9xV7KAwuDHg7TYlR0lUpp/Ecb
	 orAV9bIi4SSZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE0FCDB474
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169716522869.3767.4266569528251598525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b848ca920a4e46d2bc111e7809f9a1d6f6a84ca8eb42e7449cf1ca0419301a5d
Date: Fri, 13 Oct 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697165228
