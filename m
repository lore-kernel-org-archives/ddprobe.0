Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37FD2F3B
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C83FC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667919054;
	bh=XKmxWLYG1lZVLRtTNg2mLFOAZIO7PzFGOdkLWCvYZdA=;
	h=To:Subject:From:Date:From;
	b=RdVfMa5KYHFhU2sq3Ay7dO+sUlpXT4OqYbqHYR3m5/eZ26v3IFCuNYhsF2FzWlOXO
	 RGL0jnaJa8kadTIy8YKxvig0zA5Xk9RFG5CVOnP+WuPrH0u91Tj3trjYatWavLC8Yw
	 mHH8qCi6bwU7cDzhnKL5og1I5KuQ6fz0Ns+9aEWTnz1hpl/EYaCojaVXG/PNWDh7dI
	 DjKLLP+XUsoF5O3UZQBaHCwj8rpfym8lgkBhdvp3RP0wqIDKJwyC1csQXsEyLizYj1
	 YZg22s0g0CqyGkDIAoB53CocAbRCqdNqwg55fmDVjBktScJ7UsMJyrEnIb22mcGENQ
	 oxHQU19+sSh1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A93C43219
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791905438.5733.8068310776249618372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe31ad12878c9b79c1964473743bb477142e3595aee47a32b45b567f8a68c041
Date: Tue, 08 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667919054
