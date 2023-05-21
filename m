Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D33E803
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A26AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684638606;
	bh=+Bzg1cQA78hr17SvPmVYlTwkRtOxJ6GTFDxlZqIxkuo=;
	h=To:Subject:From:Date:From;
	b=JM8OtYfVt7LUstzS+35Lodocvz90qKOee5hH1oeQVgG5ML4dSKEyReZGrcrbgcbKV
	 ThghBBzKx7AjJTZCLZQX2MAW2SE6cZ/22hMhyy/WijBYXCLWBU+LCuepmS0Ym+FLxh
	 c8lA7jybnd8Tk5D4XRNpp+rLqGW0ISR5bpLAsV6fiZgEOIOMrMs4Tt7r8kzVBcnZ+K
	 77VC2n6fXnk9sSj4oH6AIFgMcCbu0kIIgXZEy5EYaPHG8KcxAWAMJ7EfBVkr2/BB8A
	 XEiTwPDp2uxwVTDGZcBgbbwE2gxUXF2MHtOzzb1FEI4mpVHVNSzN9iDgam1ZLkOutz
	 ETzVe0c7q2amQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1D6DC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168463860588.21974.10835190489537968648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed30e7502cd3a208c74577a7d21b2099e0a1990f5b9fbc2510a0a5acd47a5ff
Date: Sun, 21 May 2023 03:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684638605
