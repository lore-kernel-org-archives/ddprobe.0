Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C43210C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D35FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671541287;
	bh=3+N92rkZtTXu6H4tEBukM7SkQoOADkrI6A0Iwfl5oro=;
	h=To:Subject:From:Date:From;
	b=lSVU15RS2uEA6Yq014IJet5Y4R7AT7ZYpg4GL+DuNGvxKivfEkEmSJ8TBzTy99SzO
	 Kgq28rNzW7Bmi5Mi7Mv1mPkwXsMIV7Ew7PgDWpAnIekX89gfhz0yY7VY7pYz8jl2h6
	 xaeD3Jqwav9gLH3LoRU2T+1tYKLV4YJUCFaumVhSmcrnYVrwqlbjKMwn5qBuCtbaBr
	 rODU0hEXrR5UqEmwqalH2buF5RXl2mfhMhDyTMhYvNBfIS/68DMm0uMK36VyYOpro6
	 34zu+ta4RllMo8w8wh1Bl5uojzmaLcQQvfE9memgTaFcSvIdN6EgSAnP1iEPqUk7FR
	 GKlGHVHHZ+m9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638D3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154128739.26071.12843176607307280822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78553d7184982a7b2d27270eb849df51cb7ed46d67e9c45f49928fc240c85f5c
Date: Tue, 20 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671541287
