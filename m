Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E4E1364
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYkGQ/v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77551C433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700791696;
	bh=cy+iwGQlZ9S4DJR7PoaYSPK5Hl6R/EPs5dU1A9X+vz4=;
	h=To:Subject:From:Date:From;
	b=BYkGQ/v7Y3dXbFhJTVpnDoVdcLlf/m0hbZ9YcqO0P2xrgH3sWaIqnHhJ8qpp0eCB4
	 N/6Z0uaF+rpyp3sLldFcSXchsjw9P+lzAaZPozC9jQTTk5XlEPX6JbBrmcGrNbSA6P
	 Hi6DE1+ue/3UtSr2qiP5KRENGAVnaiy4O/KmhHDzIJVf8RWUxuKba8EVzuuDHwg9e4
	 6L4PsWMOc2BUAG1GyqckySb1e9j0oMRawlgqbkiZTFQpa7Y9glri9Jpnyd9ryvp0U1
	 lZgB3UeSRMaCSmMNq7SfNm9H8BeMo2cWJGR6fZxjfPUVgt0Vnw+mYcGHDDxjR6gJXp
	 KJdlKk5/JwL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCBFC61D85
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170079169636.18411.6024886800695679812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbb9f324737b9002dabc067707addd3901abe1c0190b1cada02f786bd5ddc04
Date: Fri, 24 Nov 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700791696
