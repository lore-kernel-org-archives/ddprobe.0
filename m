Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B94A18B0C
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 10:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAF6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 10:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695380108;
	bh=ypP0H9EsmNY+lRehymXuLOE8g9IdaAtO6d3GNYtGG+I=;
	h=To:Subject:From:Date:From;
	b=CnY5BtfnD+HDOC+rXLq+dM7oUWQEXakTjDSMhyw5HttoBEz0WPKX5bpmt1T82qj4Z
	 rD7uFPEOxbYOMS3ZwrqfdPaTQnfuA53CogUKkkGdfg6Q8Ad81L0MzgfRQ2koHKpy5l
	 ll+RSQoW9b/Xw+3Q+Mrwki69U5mqNmP82DuDn1wiatMr7uPDyyY1XeKsNCG875OoN2
	 jqPtkNODVpnEzEwNk31cChT6CJEfXlzqDLGbmTPjWfLGpJhiR3xQbm7LifmX5zY+VN
	 blw6NlS4/og2xUd3kOU7b7wYLgcuKCyIliPNtwk7USkRMqcscEbpG8zf1SiuBaByNh
	 jioJ3gHmMAdNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3107CD4F57
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 10:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169538010866.20268.17228867721677865132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2171d09db6f46503c0d61b74a3c5c1a992574a9b630807fb0992a7a188e5f6e1
Date: Fri, 22 Sep 2023 10:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695380108
