Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C36C812
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 03:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir+YK3KD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92C7C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 03:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697081828;
	bh=adPQ1EQu+yMavmVlOgjWOd01H9E/1W/ZATB1eUQVyIw=;
	h=To:Subject:From:Date:From;
	b=Ir+YK3KD+IRbRINToRDo86uPotJaqWYg3N/m8WIfWK2v2gCuH4c341mle5izkLF7i
	 QiNsFZUH8l6A1kGkDc5PW+WmC+Ecgc/auG7Snu3yU9i0O2gulr4oDVAiLNG2SWwIsR
	 RVJydQvfNLAuakZ7qA80OB5UuhV1D/bZH7n97I8fYMOVwo3Z4QvRlliz/7efjsJ6VR
	 aTwLDyZPeWdC8TmH/LIB6lXrAWyDwYJPHQPTACDxMmo8oFZNV2Z9BrDBSS5NSbG6pG
	 x9QiAoAWY5rqxl8WCju9GifMbSQcb00oRGjvmGlaslZUeQDV+ns3VgWteAdJLYaKs3
	 jxfZ0J4d9iyog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22CCDB47E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 03:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169708182868.24068.8051499883226750560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707660aa365b7088353fd42be0922e80fb4bfc7f51b05d294b15058e8f297a3d
Date: Thu, 12 Oct 2023 03:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697081828
