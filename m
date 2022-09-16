Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4CA5C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E41C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663341053;
	bh=vbnDIeWJ20g7pasQcAIybTPuLycToRlwbE1y4kAkVOE=;
	h=To:Subject:From:Date:From;
	b=eTy8qC6+SHe+k3mdHXm8DuqT4Nxdn/khnPTSYKumFykjWTqLvn+SANenlw7L1j2Ek
	 KFM1ZJPyGxEZwFQ/+5E+uw7NmxrhVWrbkr10+R4P/B3qLmbE9GC1qY9QS3has47MuG
	 fRzEYEjUFwdCW6oWlelAAA9aLz59h9b07J9Dd7T/hKoft1QT/EWPYx4uJWg2HRB5L+
	 airx2ZJ1wPp4OdDueoIYH3k81QFN3aMxCghoFY0hZ8VIRhvz82qdWd8cY7BckJfGSA
	 j1GatK2B7BHYCDlxyjWtfrDSSwsk5vht0mszXSPFvcMfNsAvY3nKzsYYJb+desBYQH
	 XgtUjuNrfgqEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667D0ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334105336.2971.9916064400669972343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262c115baae3d3d005aa642e5622599c00629386aa828188a4776894ba61b4cc
Date: Fri, 16 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663341053
