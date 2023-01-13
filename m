Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF6F364
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF3AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673569287;
	bh=no9sEda9kQBLh+ezAnY/4Yi1YEQjXLQVnSsyaRXyNZw=;
	h=To:Subject:From:Date:From;
	b=rfwZVQoxBqdNVRHg+LMhiliNH+ZPXXqBhXvtNIQqKtSeMGbtHVNmI7wp5TP+2zte7
	 uVz7UelJeEaSX4VeKKMtNjDlOABn5V/n/sutSF1P4O+OTuTTiARqgq8Aj4WJgvXgcp
	 9nwhyohPOBiFGqVtFTS/3ZVQNn61GXF5SyKYQEtxYd6H1xnItpURRYPQYhLHPhMY0q
	 otAAGqiPe+Y3SR8MqmwWpTFDAL8KpstIusEwFmBARRC1Vaf3I4BiR6H2uC7T6oal0T
	 WOdHxBdBbGV8KPghaIxIFLmrqdmB0eOcdJ+aGN5Jwy5DpHhoDRL/LWoTIPO23n8FQO
	 M3NUkM0ybwy6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E9ADC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356928744.6734.10040024488844459097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f05625cb5c24771d374a5bb6a5702a8e987a0ae2e1b1f4990b31857d63cae0a
Date: Fri, 13 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673569287
