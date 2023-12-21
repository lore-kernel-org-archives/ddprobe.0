Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81B5156CB
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZHr5k+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785D1C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703145496;
	bh=jVzQMYdWvJn2V/gSssTngupzgLbxIuhlvRq7yEniaEs=;
	h=To:Subject:From:Date:From;
	b=iZHr5k+YHBFn1riChI451fOOpYLItjavwQ47nGyiBFE+pfI7W5ZHy67vdk4sZzGuE
	 E2VI5A6ZS1OTWVPFlAAUKG7eKmXLzVaPkAECjOysRH+C11DHo6yjRb+jC5nOg2IiQo
	 9dpUeFzjo9TxKh9Th0v37Z2m1WNDgo9elGkaqNB+PrFI62uEThryYmRcc4mI4QD29R
	 RkyigUfLoS9KhaMGRSmrKFIWfAM15cED6ekvzacxurUWF29p+SReW3UH+VGfTvdCom
	 9a4wDoMmDJ1BcQI8wMTTRFYgMil0NIwV02Cz4+itOM043crFyFzrhx93uMgO8voSsw
	 kNZUG0imD+2NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4B1C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170314549637.8433.4284080165264900479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f4c4dbe14922d0e784496be7cff29664dd70028a909dff280aac7d16ed98d8
Date: Thu, 21 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703145496
