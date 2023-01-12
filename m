Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39A17E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815BAC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673505687;
	bh=RiiXmSi6KxrG7ABXOsAIlVWWBZd21xg33Wvigrlqa4s=;
	h=To:Subject:From:Date:From;
	b=gmyej3GdLv6ReFzgeRayoUdOuf5mXlo1EU0fOxlg5MjzGVYOjQp1NmuI+aDTP8+Q7
	 gTFJt1trcEBq15tzWeAie/E8XjvJDiAr+ndXg+aj2v2tET9N8ZUlFv3NFWyMWf9mav
	 iGEmLRK0iUDYpuxJkZ+lHomupiSzBcro1BkCOmPxbysf0UPkDUEELej1eTvXmBqsM2
	 qPovE0jKy5UZ+oEvXD8zakNMeqRHS2VyJgeCw04X52nlnlZbWlUkePktixbQwv2Z51
	 kH+/5ObrbP9Y+TCj+O6UNSH+xs5ZiLxeoN7cr+y82zTgRq/tRcXLhfnD9pEtFGPMM0
	 BInILJvQGiFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F949C54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167350568738.25726.854652379227637620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcea800c300a65334614421f183b4d17d1932aaa091e0a4db64c860aa77fd15
Date: Thu, 12 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673505687
