Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B19F20EE0
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 23:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BE2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 23:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692746648;
	bh=UrM3lsQ0iup/Dl9+V8H6Uq9yWZrRBHiPBZn7xhAmf/k=;
	h=To:Subject:From:Date:From;
	b=CCXPzlrJl4zWFDMJOk1/EV284MYTKgeS8CqfrHe8Rn2fpQaywjBlTHgDdzVRhoduX
	 XNCfphhVdG/NkDwRKojQhXCE8OEYMdyYYi3REux8xalBhjCzH7UxOhX522csyblmXf
	 d3E17nPf+eKLPo5wYZtsW/WLKn79M69fuhZ7aLWx5SfhAxBfA4cf1T5aLiCP9UwJXF
	 k/SxRpy7CPS6w/VxH5R56aTsR7aoIZ1XvqhiveJwP5wX+5vuMC4WJJuTVuGk7klrJw
	 YUiUGh1wKyX1bwy7gLQ8xKJMvHXTwTlg6rgcRiIcSLP6HhBCuC3MS6t+3ZmPPCJ1KA
	 4D4UapZ6ihmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E53EE49AF
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 23:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169274664866.26256.3622194399844464969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a258dd1c53a169a38f6a4faa877a19ca8e7ff4e76ff89080b61f2eb2b174343c
Date: Tue, 22 Aug 2023 23:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692746648
