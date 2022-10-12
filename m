Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BE28F7F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7E9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665579653;
	bh=McMQYzhfzyOMx7USBqBSx1ahLif/6JW2Y0aP9tqniSU=;
	h=To:Subject:From:Date:From;
	b=t7dawVnVxFtztBdun5nS4SrFFK5vKI9y3K6VVfVdUvBI4IJ6XEYbzqFhLz8zvcpw9
	 ZS0DxAu00bM8OqslvxQ3wgwszInnPPty0Hfyq9jYmaQarRZNZfAXciAQa+gZBDJ0vE
	 4spVaEBV/wILdEOrwRpqZmLabGAbwYIR8Q8NUlNk7u6k+Z9H7J217rlTokZhGw5hvp
	 qQhu0TcCnawk3OnYvj3Nwl6O2e7rwVOolEO/oBd/sN+3fhXClQFwVZiBK7tJ5S3Rp8
	 WLEgNRCYlrqoNNaC3tyfYefQLMo0BC7Fq/Q3NBdlB5Fjz1HmyeouCY9HQ1ZWDi5GiF
	 VDgOg7N1gMF1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579E4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557965334.25418.17657491033194982552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bebbfa282e719c2153e6895a57b9bc8c0cc03296044f90770a78dcdfc86f87
Date: Wed, 12 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665579653
