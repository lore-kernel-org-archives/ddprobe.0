Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC63F107A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5DEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669139454;
	bh=/tQytBDRhTRaohPcvGPTDV9YOtnHgeV1yBmLNmYLhxo=;
	h=To:Subject:From:Date:From;
	b=blZEaedVDfSZBZxcNPW0PCvy2nErUNB7RnwjwuxzXPV2B/WDdjNu8lT0Hn+HJpfv7
	 9g4/EGWvfL/vDwdelU/HxWNx+kU3uIzHnvSihqriJXpyWByB3h3n7AUoZfVsFMuHAn
	 ejXcz1XAbyf5TBVpA7zh6TOzhMimX7C9v+TjfRmNwg6eakc8JEAzDYhbBMMe1lLp+6
	 E0nBjRHXQS9TncM+0D3GFEUmfg3YEy0H3mLZ/aiUO2uYIIVvwXxcE9fPzlo9bzxWeG
	 zMrCJgX6oM7muTB4AdfV8/1JBV4MDALN6ETG7Re4WenCwvqLikUSp/UzB7GEOFUVsA
	 adP4nyP88irWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF8CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166913945438.6962.7791171657219375391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2fc8b7013c9075166e3edb9d0ba77cd6bb65aa5387f90eb2e8f72680f3bff9
Date: Tue, 22 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669139454
