Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE66E8491
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B589C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669585254;
	bh=SsNG3Nax1IUFUktambVnGi4djYkqTwLBd5V3Vzj4e8U=;
	h=To:Subject:From:Date:From;
	b=T4sASW55jH1JWaKD8zsTChBRpI2rS6FcQ14+EXnFYFcdvUDQbtvw85EK2O7YTvG+7
	 cqZLDDPhiYznq7Ry8AasyMnW7HY3T+0uUJvcOf/YVrnRk5VbEYhdLdY9LWstlTE8zn
	 yq43/lZDqI0JyppZmcPEmvUjooYkT8uQLMPyTIU7KOX/rrtV+35f+HjS2wWG+FmlOD
	 qaT4nDMnT0hkmut3livtIh8NS61pZ28juq/jlVjjyyrQtUQz1rFw2p7gif9DI5M2jE
	 0pY5i4c2U84frJmgusSe8uIhxDwrN8d4rB1oDaKI4+SxYnPFwrR28rIpTbxPqc5da2
	 xLpT4rubcNUhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C058C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958525435.10493.16310397255118569046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6ebd6045324a2a821b79a52097191ab82049cc48109b368819ac967c18e838
Date: Sun, 27 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669585254
