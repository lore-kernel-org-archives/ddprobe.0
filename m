Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8AC28ED
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C79C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690576328;
	bh=eBQGQwcCgvuatwAqYdLL/purOTjG+b+d+kUbRCj6EMQ=;
	h=To:Subject:From:Date:From;
	b=uYegBNwUDwjIrI01q7wuVRVvy5mGCveE7Ivcf9MxR3EaVyQQHZtIIrWssJlxDoFDV
	 xyRc1brE2psgrjKyXhAhLCEU2uXjj+cWl3+AMM0yZjdBSWchtmp/Kzz8vDAjOzxMkp
	 WvrJCI/NnqUDtlqeSzBqwuQYdgmzYuEgsLqBUi4dsGXwBSvEiAO80u71rDi8KxHcQi
	 wLE6BEnD+NU5NDSflYLWSTL69G+Zmvkelidp8QFe08B57/D+CHWBZci1q9CA660i1E
	 M4rBq/6q/YQZDlHYOZpV8OR66hn4BfjHG5tIVzgouEvSAm+9aiCdH5HhKclhjq0jq0
	 /Pz+vpOS6qV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD87BC001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169057632870.9551.8264362951959141309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2c32d5748b360bd6d1e0eb7f87200072114c5a7d74d5eda8e03c89564f6e87
Date: Fri, 28 Jul 2023 20:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690576328
