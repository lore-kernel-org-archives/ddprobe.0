Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D838D2578
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B4BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672143687;
	bh=sKFKf4AQaGQaXRJtsL4J9YW3pOwUPsRRkI1J9uuXNf0=;
	h=To:Subject:From:Date:From;
	b=DOXCtutjq/Ui7lpe9z3hNQ0k68i2mM7RSEmrMTiWaQNeDI8kntMHOkyBnyHfx69H0
	 DoTxVuibZzSaUn55Ht3Q843/oUUzpIzFnQ2gLn0LWz6vj68TjvgHVe74lTPRe7IcXG
	 CxRMY+J5NmmFJQasxpZcuNXnjU3cUFI+parB7oGlGwye1zklyfNbqZmjoBsW0dYBU0
	 5/K0k7V3PgHN0zBLRamQu9hJBaWgScDU486iXFZ7vLvlyGwCRWRHLWo62Ss/GTAwkN
	 5R6eg2E+CcQp1Fueq84b4vxHvZct8hf47RrFtkq4NDmlO04cVxvM0kdf32QgJdlhr6
	 vVUNwdjfbYq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6438DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214368738.25008.5099923605707394083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7e7911c792992e4e98f2fe8d5aad2b1a53248226a96db08d745ddb04b784db
Date: Tue, 27 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672143687
