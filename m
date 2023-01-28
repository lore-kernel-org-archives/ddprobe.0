Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450B62908
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E77F1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674892385;
	bh=kWnYtEdXtljbMXgs+/0HknWJwJv+jGzI6TlxomddWAg=;
	h=To:Subject:From:Date:From;
	b=gSy/4g4mniBlUAJXcWlhFGdhwmzwC0G+ejDvLmHV+VEIWZeOCQpd4/oGhbM/01sAy
	 DfeMklUCScydSzk716dukn0cv9Ok6l9pgpcfv7teFxYbW46GVckArQOBwItNURlwiP
	 R/Hgfhdy4yhcGwxZIEnQc4snn1T0stq02fM+Qaon8gTnA3wF+IMYwx8LAsZO2hs3XR
	 BXSSzTIeAcA2etbf/wxB+2qamZSj7eNIBaLqWuxBXCa/XliEDGblihFSQlpuGCgDCl
	 HD/+JgQKU93/4xazT7sBImQ++JO+P2js3SsgRt7M09dWztCrET3F0cxQaNJp+6Cd5v
	 tFKFlb3Of2dlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CABE6C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489238582.29309.12186354332067358849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcbd0e04fad87d513185950d39336db6c55e30c10939965f7b7122eaba48600
Date: Sat, 28 Jan 2023 07:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674892385
