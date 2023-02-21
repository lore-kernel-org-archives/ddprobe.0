Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342AFEA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 01:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB27AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 01:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676944145;
	bh=Tnilh4z1X7mSw49pQ1mikHxko1KzKa5dcSdzzgtpKF8=;
	h=To:Subject:From:Date:From;
	b=JD0u4tc+sGNMMsi3SswKvMXcvObPylzRLY4WybFuJpHSaBYYCWhQpz9JueCd9d0G0
	 6ld1JL1hGwPgzU1mBDmCQZCXJhdL0rlc52veoTkI06Za4kTQ8ePGfvKlAxoRuRR+Wd
	 cx9qAYbMInUkQp0fER/GzykCv6L4B4yedk3Y6VZWzQdV7kOrwdNG2yh5JHv6RSSRFY
	 IiloZ5HzoO6hlqpCMNi0GXAYNeK+36IoHOntVCGm/WAs9f7PCayMW9nFEMThoVgIHU
	 7Xo18PJkPhLBQsweGD6NtY2VKnWcj0iZNxPsEFhz5LxQj7XHIg5T2HyGcTJgj6YOO6
	 4krYjuMoyzGKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE51C636D6
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 01:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167694414577.20723.7439018871606210710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df96121bf2090937c898fb40e2cf2b610e61666236a573dacee7d9735b9398aa
Date: Tue, 21 Feb 2023 01:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676944145
