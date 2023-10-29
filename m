Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5E8137A
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqKdtoyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93537C433C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698552496;
	bh=SVYD2C6UI38o8dX0S+LEbAH3kNaiTS7vfrPoR2uz6Po=;
	h=To:Subject:From:Date:From;
	b=JqKdtoyJ39L1tRJyPGxbR5jpiv1kUk2L5c2gTG/2rDCRtX4F/9H7k/dNspvVHO00m
	 CE/5ANqvMc3v3owHndBdO57JP6sQOMq0dNF37iHGBuVkPZoCd0TLck/IPrzUePIq+c
	 lwU/xcoIGGkD6I2Y1cHZk72VuCuus7TYteaPMlwiUo5Uz7cD57t4x95upd36SKnMqx
	 74vrBSM2AGSVfJV/TT4I8kF5p+FdZEKjipq0nwYidS878eBmN1TzmHA0arIa1ZOsmr
	 PTiZZXZIUODBu5bDa8LJE6AEseLnZ4mZAh1RtEZ24POH9X4c/h9R/lU0+AP0UKHCbO
	 clp6AB3H6GqQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 731C5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169855249643.18817.5957811944897670701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f01d01592cd6cca729eeb3185d2fbe6631bb1310861b5b04f19a9aed0b9d79b
Date: Sun, 29 Oct 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698552496
