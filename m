Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B61643
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 06:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7F4C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 06:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677392705;
	bh=WG2Te9LCNEdXUZninEDBUCedXqG77oSvHb5FZhfQbgc=;
	h=To:Subject:From:Date:From;
	b=tvD5BJ9q79Yw9m2tXx4PPnPlMvsFjQHCCI+aEJLJG37KAmC7b7WuSUCiWJec5hyMQ
	 0IuQK2UrMqmFTTP84+6vALorJvLXku35ylrYWny0XOhW9JzfqAq7Qn+FUKybDpdXhe
	 +DcUD/EBbRZPGhZbPkfFqwD2T2fOSeVHeNRrpUiEcRgmnUluJxpTYJ6qO1odlsdebE
	 givtD18A85+tnzE2fSLOsQCVB8Nkrp8yM4Ps4CFlVig2QgZdge58W1jqaRUAidoehR
	 HaVKY8Dl6M6bfLAR3OAg03ttYZXXTzJjFRPzS2QUcDsfrHJvLla1lCuJEQoVOLUOxC
	 2YMOoZ1vk6BQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C119AC64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 06:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167739270575.12576.5776295973666924144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f01431e981864c190a15de274e518a2b5f9caf78ee1db315e026ce8d27357d4
Date: Sun, 26 Feb 2023 06:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677392705
