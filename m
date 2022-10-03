Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA68E17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF08C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664802053;
	bh=2ADL6OqC+vbsZyGjT1Ol0eNSWU7DE8UqgnkErypj4C0=;
	h=To:Subject:From:Date:From;
	b=mH0UUeQiM7ZH4FXXTwmIy7HWGWLkR1lXUK4QOG/V+vUUtrgyYN3sid9Zkb+QaxKTn
	 IHeYr+euY0YL2wyELNgkNlfZmSYgsGjH2UXuvMhl0nUPOCb4xVv4xlE8UBrVQ1uXWI
	 0Gi5HmWasbV9f+umO5P1exQXM29KiUJ47sVGrQSGEBXpSE6V4mg3IW6rqe9fmflZ9p
	 1d4Obp+7p5wj+Odp9IVHrXtX2hTfCFxkf4OKbR3ZxxcK6HZO66bnaY7XYMRfVQy7sv
	 2Q4HEd4iN22OwSyO1MKNjlPA6e9dy+i3lKFBoXTtC+D/Z6Uz8GwQSdfsqUrCL4uHF9
	 1CvaGfcYwm00A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537F6C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166480205333.9939.8789019956120107225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9579155658c81b6a7c28f28f5f6112032c26437a3e0dc6025e4549c9cf111ef6
Date: Mon, 03 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664802053
