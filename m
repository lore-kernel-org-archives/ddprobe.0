Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5EC17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC95C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664792453;
	bh=ItbzHRFCUtdFdRuhEMdmY9zcytPdbnlTj8vSEdYdgrU=;
	h=To:Subject:From:Date:From;
	b=ZmbC7YxZp5K5tjxBqTcMQ7QRLwoytVIsm50yOjg0QMn0iWHu4vnAHeoT9/B1hhJ08
	 RYqpZCp30RniQMKX1OP4WnJx5MgvmpjKtqIrAhVoy7GkscjyGP6ppdnF4ojYm0Rtxg
	 dQ6bXB1X05vpR2jnSRD6O88ljsX6zcu4sr8LKfD9rPD4MzLcfBtm8aBLHVXtv0tgog
	 izZ/NeHtLeYw1hhSnVGzTxj7XtwpGZ9qyxI2ncf/5OXuB23F/yc/EdVen2KTApjc6D
	 guu7viacQ+CKoEFNDYrkYtHXeRMr7mDObtT9bf4l7xLPzbHVR40FHNvj2fDrMiPk0d
	 lhddmL2DxVOnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B8FC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479245332.13628.18442637108239922909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310c2231dcd53b429813a01cd583a83e83619f9033c5dcd4a8600e332319652a
Date: Mon, 03 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664792453
