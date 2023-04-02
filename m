Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAB42F43
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 11:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05B8EC433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 11:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680434106;
	bh=O7Kzv3dvXGuz6MXnYBQbpOCSFRUxvTKJKUfpQAF4ZNE=;
	h=To:Subject:From:Date:From;
	b=Ripocq4Bna7CjAFH34K2sZUVkC0V+2YlCqID/t6NmGwbrroit1EVcvRD9Ki9MxEfv
	 11D0GcEcdKdyUBC/ZlAoFeR2ouO7yc8jTEZ5af+ClvrMWfbAvCJKnK37qdBXLHEM5p
	 AlUdYP7MB1seo6ByNoNCS52As7pp0ADoQ0OlXQwLOsiOYSqu++D8gsFpeiYQSlItid
	 WSN4aABHJAxs6NDZtzHEJAAYmOPrSWtHI7LD7qLpABILyBRGdsR/ZvIRMyOwuaSbeH
	 NPrvKI7zuLHZV/jKuEzETu9bl1ZecWi+goQAOMN6mE+Oxzg8AROVzXyEGBNCf5MO2x
	 znXxBb+Pjbc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4A9C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 11:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168043410577.1654.14044302385361579673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0667624869220e4d4d58028816179d89abafe230b1d351fa84af0df7c6241fd8
Date: Sun, 02 Apr 2023 11:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680434105
