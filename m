Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB531256E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A80C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669546854;
	bh=kprWnDC633YqKhbb5Ct+Rv29pCQEwycXLLqMT7b5PwE=;
	h=To:Subject:From:Date:From;
	b=jmfxm/fzFRjrSG9+F9iXc2YTXoBLMoBiNdkpNi1dDY6uLxA3ON8Q3+7bHQj1LApbz
	 TeMiI9DYPXuC4VhaFVIRVRRluDSuadyODJrUWwud/GS2sL0fcWNSoLOsXGQFPiynY5
	 g5OxwWxv9ZiaY3aM3xN9GQqoax0QgNxJcWupI6wz1KZ1ZThJMEN+fLnv4+PP9eamTY
	 OeUW2LQaYBQ34+3MGSz3viAWaqObSQOHdDo7aKh4p8+xU5e6bVXYDzJQtm2L2v4MJ0
	 U84cLET3SCaRKQWqGpV2yD/OfCjHnrdVX+0lnguRRm9sNiUYcgatx2d3pybP51FOgp
	 QEsfev5yvLoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554BBC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954685431.32013.17667419629901547242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7264d86d19e657be0e0021123d6dcceda4650a69ffc82cf66aea0991b8dc91
Date: Sun, 27 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669546854
