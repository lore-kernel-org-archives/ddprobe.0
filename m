Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6BD4C9A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B83C433F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673970087;
	bh=pN9uVZnc/qAw/dMWFAbbA5P3TBGX2HtFTsxOpnAyJRA=;
	h=To:Subject:From:Date:From;
	b=iscT6yNztjZOZUWYbGxpNWUrbIIW2EMZCrCi1tNs7HQa6ywWiju9UOaJl1xJn3HLC
	 ryST3PhRXFWaC5UbqzXLpqRHBgONnvnX2MyfT7GdtDeejuzvm71mbYY86tK5MMpYvL
	 xrcMdu46ZP7n7QDPO390cywk53yAXsCwS+bWeFWhC3a53I2TaVVW8X2m86EBrnLt5L
	 m53yT125va7SwcwBxOSOBI29hK9d8fmOdBQYXLt7IgDeD7dNb709zqrf0Z07W1pdeG
	 Gjcdf3FBp6z/Lm37KkjuwGtjOwlntH5y3Nb5NVf99aBE3TENzbceEojW5MIQ5vZX1Z
	 g9dsxm4QxRVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82D26C6379F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167397008752.11575.2458257122025274931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46938236fa281a985c3af30b47cce46ea51f37e261af675fc35e178b07a034bc
Date: Tue, 17 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673970087
