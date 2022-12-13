Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FE215D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85A94C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670904087;
	bh=0Fe6y85tIHaTGtyIhpQSkYdkUIbghotzX5RiZYHLkYE=;
	h=To:Subject:From:Date:From;
	b=jZo6PGxYcAziuGAcIJZDC/BNuQWJ7pYPIdiQire+Ua3WJCfWy9myfYKOOlpkkzvlD
	 9zubNzjhYlPkaNCc5pxFZWH6bkPPnK069dT173qMZYJ3LfTx8UKZhcSnBBeFDgQ4W7
	 On+50AYS7jq2mwbZmnwKih3/3e6Tm0UISwtUPBp7pCxaoTMvdCK62etAwr6fNss/vG
	 rrLFpktu823HENdXBYDHbzHoQb7y3odh9xkFmeqqaSmlr43ZHZ/ewc5fLncrwwlFt7
	 GYHZdB4QckJDu4UePcj8TCcIP2lUkqlp831GhpDPxYm9j2wiUii2VEiPXJ5OjioRBm
	 UOVtJeIcp2vGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 687EEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090408739.31686.5515510722675687535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3090304629fd65e941b28aefdeb5230c534e5b15d5ea447a26c91ea382246cd1
Date: Tue, 13 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670904087
