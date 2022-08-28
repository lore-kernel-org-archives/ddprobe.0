Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D984699
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 17:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69053C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 17:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661709052;
	bh=9mklM9btE/sj8wc74QwQ4WtS8GRo5ymcIG41WFeXWbs=;
	h=To:Subject:From:Date:From;
	b=PmX0fgd4TUeYlk4NcKEBoRW4QK68bXRGwCkhjE+Fx1gIaYPGaTH8uFOaEiC2c6piW
	 j2ewcqWqXJe+LLeAQ+kS2Q6tomQWxDA53FZDIpC1gp8SoYBzBssfp3Pfya3Fj1R2gT
	 vl26pGMtiajTleCPfWpjrcjd7WHyHymstT2zZmFXP5lnJLF08OHXD/Vpggd7tRRprz
	 4l9VR46RRgoGCsGEMmkQtw3VWEe+hcXoBFw4uKd1k6QBykelI2ldjrGCXHqqQ4Vdwp
	 15btDZ9R/8vFhnwdzMGgg035OYchxH2Lo/mvToxnzUxEestQWMgCb8LZ7xNMQ8xjyT
	 aaIIOD19Jsz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5362EECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 17:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170905233.31997.8499976330617959954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21590727808b8a97d89ed1283eb0c8af5de7918899ab11c503e4b40e2786690
Date: Sun, 28 Aug 2022 17:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661709052
