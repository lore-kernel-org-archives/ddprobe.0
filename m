Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70FCAD38
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7882FC433F1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672846287;
	bh=kY4kn/u0G3OMlF+nUddhEY7h17iShs5A1HC4EcTlQuY=;
	h=To:Subject:From:Date:From;
	b=t9v/Wufobau9l2ajQsRMOEIc9U7muT4JBJQEGSfk5/JyaoRWRdXyS+WVsANEAYGGg
	 uhZB/3di65LqPhQFLhgin6uIQu2pq0ZwPyYL0VvAtWKV9m3/KL22Wb3GkDRgloTTLB
	 GXSZbbnhTB1nBZf6DebIjwVx4LTquoskocH7IgKoiWQ3qtRombvxdCV1gkxmnlIVw+
	 P2JZDIYi0lW/Gypv7kk/5CapUc26bBzE5VZjSDy0tkL7HsPj81SIx4vg9J/ZRxG2yf
	 6YaHyjurIXhHmYRu9oy+jwhfVTws4DeZ2G/r/FJgHOHYiG86aDg7eHUx0EuKmT5ddb
	 es53hDIH1EK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BD0C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284628738.7582.8522972079686907624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3c1391edac5735b841e137203b058e280e651913d18d58b93161533b9dac82
Date: Wed, 04 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672846287
