Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6522C1C05
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18DF5C433A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681721286;
	bh=jY3Q3uLI9ilCYC1ZC2AftUvL2JVKf4RZGHG40P90S6Q=;
	h=To:Subject:From:Date:From;
	b=quJriCkaEQjvhKiZu8r+4W9u1nGFUUxGCYNHPthbgi2PoLymgxDK5Jo4qKklRXIiE
	 o3XX9MkYFUxc3EfBxPU4qRob5wxNeRdwe4XHbi+hZS0gBVIx/xeZ3jsFcnFQO5b4IQ
	 v6EPSoIRyPJYOcOsVtmyEpSO6kQKoL21YD2DCwK38o6ojS3YnNQCCex6llIJuuC1HX
	 uATUM2HHhOZ7ikgnt3Pb0zMVgaOlQtRhd30jp6nvP9Pk8QpTONFy5b9Mb7z0zs8r2X
	 G0DkHshgIDzn9F5RIkn/ws6rjJpPuwMiuQ/OtWf9+89CrL6VT8mRjutqpsUgdDq5oa
	 a8se3kSwqkqgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEDBCC77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168172128595.28315.15568400141801271884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7dce9091a55985d355b4795702ba30b343edce5534be291521b66e6b935967
Date: Mon, 17 Apr 2023 08:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681721285
