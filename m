Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB2220E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C77C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665642053;
	bh=+PQQzbVFh5xMknOT/aQahFLxcVuFzbTc4GPZm3iQwzY=;
	h=To:Subject:From:Date:From;
	b=YFmQA1sg5g5uHEIg2jfyUiO+Z3BIqSSBurMB/FjQasYWA+MH1I5omFOOhvWbBGRMS
	 JbdeVPuDgz8x70P3CII4TA90bYFN4ZvjyNezewhIeopiLlKYSay39hW4sYAZvTZMUU
	 jYjXJXcWTiUhoF4nkADEAozql8Mqt6vb+R7ys0l9UZPIqAgA04fvGFFzygRuXyWQcN
	 vDF+uPsAw5V4AuFRsgEg9ZtiszagjpwK88wE3pNmrzXAcYv4ag8X2NyULnyQ4jX6Gp
	 15aW07/DWXTinOgBDBBAX77HRZQsHWkXPqFGA9TClDH+PUy1N6ecc6AzzL7XWrrUNI
	 ArOnRkCaN6uhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD0EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564205336.26089.8052917384886917435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a219554f2c6c02a6a9cc75e9b6fc2a0b9fb81393ca45afe8328dc7e72493f5
Date: Thu, 13 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665642053
