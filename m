Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF39E1C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FF6C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670816487;
	bh=rhJbroeY6vtEusqvoLX7UglaKXwcFlCMptfUDIDBrOU=;
	h=To:Subject:From:Date:From;
	b=q2FWoMpkhOssWa92VkYziTmBwVtHym9tgCLZgbSlmCY8yUIty8tWC6KThOm+dAmsQ
	 tW82B6vCRGqImu3E7QuwZcIGmA43JVKI8+2ZYR28cYBdADxohZ1HPTtz+uXoYUSxl4
	 KjJzfSsDXMXFT8Ewvo5A3X/EGy9PMml8AWtiruXDfEoeLSf+GCwrRVNKAs4zmzKbCL
	 5XT0j9c1Z4BCk/eadjXc7l83sJ3dYiUr3B7qC6KC9+nbOejdkRZJqYkkkd2em3Xq99
	 +tk01e55vOtbJHT70hYZmBr93AQEDjNPaj9hfRFfKqb1IMbP812Qh7RqwDlmrVEZDO
	 QQ06LhoLoGO5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D78C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081648741.28809.10578864638392311294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a66c33d3e6f5c7a5f342ce76acdc968462c753022f16308c194339a57369d30
Date: Mon, 12 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670816487
