Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB2C3FEC
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E5BC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665076253;
	bh=VFbIyFRlBqTKBVZ906AUiSX8zNPbU0QQuHim11/isV4=;
	h=To:Subject:From:Date:From;
	b=eSDXjAIrunFY8lEDJeMCAdoJDKSReVZXgL0Di476IDJs+uoxA83+djHo+GtJChRzR
	 Wsk0oB4JQTlTFy0x0LN5DLp9CVhO4H9rbfEwaq4vy4oC/xvVJc71ETciiJNhV6tFmr
	 9I/z0xaJWTRFevo06YyU+dFA9NVKHlK1eDXzM9Ji1wg/FPQDh/OokpklYu5gI3nB4D
	 nuUf6pqVqY+PO9NQGac8GwfCt1WeNnQbqSnluH/bKHGzRp3Bwst1ocCR5YnB1MBckO
	 nYaz4dnRvaayjwStgVGNelkBv9pXrQh2O/sSkI03wJrJWT10m/wtaNMaTtAINeIJJf
	 UYbc6DmZ3tt2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B051C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166507625336.16161.2665606379701747290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f92cd39b77dc6e5ff933e03a8f894cfc51a54706ae5de882b643ddb7bb2c71
Date: Thu, 06 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665076253
