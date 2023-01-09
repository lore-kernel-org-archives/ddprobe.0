Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22FB33D6
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D70BC433F0
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673280087;
	bh=nn6lNDetC8R/gfp6MpboNnKI+VFqWpgNx6gZp9ayjeA=;
	h=To:Subject:From:Date:From;
	b=WZqyVPY3m+lfSj9C6BOiPT0Sg1TT3XFoF+Bd3Tnq57ZVmoFJwpfZUxAt1ITDOGnkd
	 UyBQ7SxV96+QXecwc+85qte7skl7STFujLdnTwqhXf97lLTRbk23VsdezsiJWolQ+g
	 fmOdvZ44Gh56uqSOtXKm6KgNwTrXbL2TnXLlB90dw9MemoNKZvsU5VZ/3VaLZcIRL1
	 dZEpk19hVoAwa3AZg+eZ/kCEWo+YRr8GFGVQVU4pEri9QkFNj7eisi7grDO6ZXxZqv
	 RC6yJpx+uTEL8TQi9iqf4URgfYSdlhigvRMM995T1aPCol71YJhkHU4GpB6WKTIyNe
	 Y+qrVIY81Oe1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83AC7C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328008753.18702.6139516976844391891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042242fbe89422635e7a37eebb51755ac12a453991346f39badca7dff6220180
Date: Mon, 09 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673280087
