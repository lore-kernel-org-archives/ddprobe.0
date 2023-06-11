Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA69523E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 057C6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686505926;
	bh=IS3zsIveczjvOkGz3t/ziIkNQOiTCWvl2OjK4hfEV5s=;
	h=To:Subject:From:Date:From;
	b=n9xoG+kWPuoMPglzMzr8uU6Vqfwm/biWSts0TR6lKRFhIcOBKeZBK7bySNDVZ/2wT
	 HXsljRTwwvC1aYtyzHq/KwOmB6Lab71NAyTC1MLmXHx+i0yS2s4yaPXYmic4pVHH7S
	 E0YzLPEtUEjYLcwxuGPyx7i/TJRFM6t6wuiej9ZwHrbqgntSJ+cFyzszZ/xtd4ht89
	 551GsymWbfuASwDY49+LqAHq7gqOfOhBkLexitKUscHcnRUKyKxC1otAVHgUyJKSKI
	 ijdsaoNx67RLSKMFr7j7Cbic2hLlge11jMfoV4wcxIbsWdEqzNXs6VFKZ6eppceKf5
	 xGREsrrGSxMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A35C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168650592579.31815.1722998389957278423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6652f20fb9ee816b00cdbf30e1548b60bc71d0f36300152a8d9aed15d020be91
Date: Sun, 11 Jun 2023 17:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686505925
