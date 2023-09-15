Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99AE30CF0
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 15:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8BAC433CA
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 15:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694790308;
	bh=BnVytYgJgE2ZiBIfDNrlBEsTn86PfeboICj+Y2bIqEk=;
	h=To:Subject:From:Date:From;
	b=g3m1jXDytQLbF/65Hg0+8NXG+IESoBxv7UXPCl0MbdqCvDSOX3CpATGBROCmN+oNS
	 RlClxJB+5a4KEdAjgSq19xmFjbbsnygWSdL4EO0hRt6/MA6vAFEVvdeslo5zg3P1kU
	 PHehg/cox1QhYL8BtP/6VC95qQW7SpgGssZMbHuvrcoYEnH8qxgDX5TFqy8b/xsOf/
	 p2BTRtapdL8UMEPAd/jnL1RRwmPCipJ1lNu97p3KdX2DR3dN3I0slJeo/7g6eqabNW
	 vxN+W86lASq8eFEWA/z8I9OMlrDhI2bq0ZUifSfWZObfXStF4dDLFm0NDRaaWwcris
	 9oVMF06Sbsprg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B77EED600
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 15:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169479030866.17844.17402181529083277571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a981ae833cc4e6f47d86adc0be85ad4374c6768f4e810fd32aab3ca6a2f040b
Date: Fri, 15 Sep 2023 15:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694790308
