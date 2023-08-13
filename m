Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A27A187C
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 08:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA75CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691914988;
	bh=JKw14UV8PMUxL1MYVMFtN1kisvZHljyCcIUOI6F7dt0=;
	h=To:Subject:From:Date:From;
	b=L1ALdWXDrW4aXfHwo7F6hRCOXXQsKiNOpTM4w35UG/E+zTUrw2EjqJ9lUuqM7PpdO
	 l9Q4zDoR1eFI05qobXn639EzRc3XAI3YIOgCKlLZeYI5SDuSaLMqCxiE/p2JAqMjxh
	 y5z8JX9Y68ixw6pcgszTIy6ToWKAj1k+9NmabBnvcU16mYsnNDAifzpsbl7sHFA19E
	 9WK7hYunPr/roCMXimFLgnSWOgtHsVxhLGwgt4SBEeyc0YxdZVnteG/EQimsw1CLtc
	 zdKlXdTPFuMrSDnNKccnH3+tzrBVCzkQpYkgQodtYQ37jZvzOWfua+6JXY9ybYmCaW
	 LCAR44ZKZsmjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB69FC001DE
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169191498869.17398.521266600722726174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9722c81f98db8e1ab8e3ac8480e599c99ce9c4a4835e77e16958518638d9b473
Date: Sun, 13 Aug 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691914988
