Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0ACC25613
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707550097; cv=none; b=l1OVYPEX2JNwmAw/gRWwNGl2wCR2TMU66ggfSMmKm40RowDNZEM9Lp9OjfOaYuf+/AxPNiOJT04yf4STtMtU04KKHlUyBF16tbGiky0mS+hM7ys7iH+Q+T0t2bAQL2IwyUv3+GhFI5Fr2d4ihjb8Jq/jKth9DuiIWi3koL0yBRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707550097; c=relaxed/simple;
	bh=hBXDuozWDXTUDuGH/tLDolx5UF4GibT62suG9Z4wVT8=;
	h=To:Subject:From:Message-Id:Date; b=cze7vygIYhRuARNw3BGmd8PMvVGA8tX9deiVB7ubXdOXVxr3JHzawG9nwPzWo0CH2p4K5N7+mheIJGl6zZ8D/6ZJXxW7DsyDbEx2qdyqhzvssBA/K8BSBoK98ospdb1N2mwAlGOKXx62J+xbogm2EHyjkABTU5DTbAx2bxcKxzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKa/FWOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKa/FWOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8101CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707550096;
	bh=hBXDuozWDXTUDuGH/tLDolx5UF4GibT62suG9Z4wVT8=;
	h=To:Subject:From:Date:From;
	b=PKa/FWOutw4nUx2HSnLXbJtRfkWuyZOCr4HtPPNrj++9nwmihremzj6hm+QV1VoIT
	 0Q6Gpdn3SWgTxH5aQQDJJ9BbnE/c0qbmPNOLPtyfeDn5Cj8wButD/HWqMR8vSrO2Q/
	 knFd1oVAJGEVs4D5fGmXgLaFofvk8YIFZLanyIotmWWgefHjq8DW3MoD1D73v04Sn7
	 +f7ucepzl2eVC/ImHj6JO/hOWVxwIuFwZv9z5p3e8OyZNLQW1roUO/00oDxVWzS0WY
	 soP1Kr2fIIoBe6daYnYl40YCdP2FG8um12l0emtGFq8qZZPyxQ/1mQVxkZV6SQsNm9
	 nLOCYPWFz9BBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62720C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170755009638.3069.12105394336480039603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39818aa2ca2989c3700056291b09bb18841d74969901cce0016d59552a166120
Date: Sat, 10 Feb 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707550096
