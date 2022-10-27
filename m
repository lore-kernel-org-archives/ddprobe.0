Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03ED7B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C06C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666878654;
	bh=MP/trRfxyhvi/l2oA5UfIqpro4NEbXD41gEEwYkkKr0=;
	h=To:Subject:From:Date:From;
	b=tdHxgCbjpKVm2wPuNmpdyj/Ciw53V6LfUJnfAy+Pqryd4Kp9TW6ci197/a8wFtcGc
	 dIMjCoHPE7L1nyJTMIsXy2c607VYgWgxBHp8sjaBY07+1Fv/UA5B4xa9B4PtsCADGU
	 MIu/VjLHoguT2IpIsw4BBmYJzvXOj+OkfCCM6E4nowXvV0jGxtnfEIfIPtVZxFopnG
	 YFh2RGyVgtaI4RmLKZZAa5JAeRC/R8DScZE1xtpbh/ZhPIUeMdQRz+qp8ELXq4d7Qs
	 4sQllGuLgGXIie99BC4UULr7JFP+AphqccPr8aincyWc0S9dpKQ8ox+hhG5AC4bcW2
	 DzwtNzyw6ZjsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9D2FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687865443.5960.6970148763722603859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb28b75013f73264763057443ee48fcb3403e315997341b675fc6fc88e9f2de
Date: Thu, 27 Oct 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666878654
