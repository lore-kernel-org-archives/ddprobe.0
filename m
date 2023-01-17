Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4011AD32
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D0C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673976687;
	bh=DipSCAgiRafl4qJVodlxiSLbqJn41hgYmmtqwOkZ3Mw=;
	h=To:Subject:From:Date:From;
	b=gj4Gkg0QKnQYYs6eGPUrPEdmjXCxcuv20w5SVBM30fAeyrB2K3KL2zC/BmcGyZttl
	 QYBBrjQIZpQ0BtW0nqvWbj58dm/oytLfDYWUHUzCDPbMqqeDSEHEiswfMpGoMOfM+z
	 7M7fRCskzg6QWh3V+63uJ8Z5uNVW5KbBrgJlS6T48e3b+h/G/dpwQkW2OJtL2rQhKz
	 elfwALsEwSH+sb5c5HIjtpnn9Qn1SeJTmMXqgUbQd73uWk19JTpKp96HJZwr4+pYH9
	 VlGgfg91orCAfjwMVsVrD95gWztnDwYHtJrlRUaJWcz990Pq1pZF2Nqgez61p0lORF
	 a6OjT7BRL47Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75BBCC3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167397668746.5782.4787644035344989981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c11aa276ca236007f03359b4ab072983a47bf475945eacb1cb93a0d4f2f97a
Date: Tue, 17 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673976687
