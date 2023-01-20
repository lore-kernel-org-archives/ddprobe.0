Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D8B17D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE483C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674201725;
	bh=XN8um4PPpbyI7wKjFvqAeIEMmpfzQ7Az1hwmsW0b874=;
	h=To:Subject:From:Date:From;
	b=pKWYxLN3b3e2WclPtAvxcdfTm1eujDePx1iAR4294TpveXwcbX9LfobT0ld9qAyXy
	 POCHEbesRjgJVyg/NUxjNrhfE3Nl5VKP4qqCElPwwYXKyjTU0kaxAB6s8WEI0/kFR2
	 fdCtvay6XgOuOMdtp4Hc5rS43ME1ZuZxldTy1JylqeqcII/ZnwVft5JaTS/XDWrRzg
	 h6JXlYCr5z+fpVVQWtAEICqYRd+JhlPrE3o0OCOFFZVZFbZ8ZFJ+qINIyRRA2xMHE7
	 8/0vVRvISAftIRGR/9X+/JO8Q4U84WcUOQhiht4G3gp+l8Yq3kUhLz38j/YmtFxQNe
	 e0IHg0s+qjdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F7BC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420172572.26033.5617863511466211529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a400424d41fcbda8972bfdfc19d9267ec5faf5594c6e9ba4d87cfeb8317cc971
Date: Fri, 20 Jan 2023 08:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674201725
