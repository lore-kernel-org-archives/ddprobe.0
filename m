Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AD0A20
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 04:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E72C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 04:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682571065;
	bh=Dik04402gaNlJoyxSfyfrdMYPSdjMO1dmu4epItcSSw=;
	h=To:Subject:From:Date:From;
	b=oHAiqUP+wmyYDIWDMVb31co1nYsbk0mftx4Wzs59P0eT7Tz1K/r43bPJDOFkbo43H
	 m7DG0XkuC0CZzkC4FpIA8vzw7c+9wCbN17f+KsniQiIvVGl3aSkr0dIB8uyzcQ77IL
	 ggzERi3dZq76Sy9Sgc/wpImGRm/xaKm64JTkD2GVKDls2bs244KyiM7kJFRbIFZAH2
	 i1rU1Ui5rKXG40a3h+h8fsfkKt1UqS2OpzUn8d7QW/cJF59W0I7U7g+wOQYTDuZCMa
	 aOGfQPARwDx0UjHSvW9PzE9D4BymW7QHyDqDQTyuq5/vwwsGDr7lQPlD/hWwO9Glxr
	 Noe1Q8hQs8zfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28EFC77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 04:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168257106575.18014.1034531871886953523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed611e8f79cdff0be8ab1c96d53d9700f3cd804c4ac274ade3c98f2a3f7f080
Date: Thu, 27 Apr 2023 04:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682571065
