Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3857B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED4FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673907087;
	bh=6dvKnxsWFwTH+vJFO5ttsVeqsQDw/T4FA19yaYJ7wjU=;
	h=To:Subject:From:Date:From;
	b=ux80GEVoAzn7iMJ84ixI0RBfHDVO7CfQnfw7MOznaFT3uakhZXsEJrWfutUSCF1xF
	 Kct/UVvODuw8CO6v9Fs6lfBVpPJo69sMrcsVyHorNZXLAhD06AkHKxvmbPKJVFh4KG
	 JaqyBcAXRMtmoYntqNNAmc5gvAHAdN6mhK/f6qfY3nPEHxopWnXefymNmFYuu+6d0L
	 awFTTDxQm956ZW4XAPLm5MPUkeBsIEGI/JuzJYEEDy5iVf5eNnsRbMex8ryUxDQd2M
	 mXoBJMNP6dXwVEwOj6Qm08JSEAUJuUv5iYfGsw4PyV2eDtyOQxFRK0i6Yf/Qz2IV/m
	 reSB80iMI9muw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628EFC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390708739.31338.12254915481785007544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f8303deb2b18c5b67b43481dda772b0d2352a7cf4a6158cd1153f031861b19
Date: Mon, 16 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673907087
