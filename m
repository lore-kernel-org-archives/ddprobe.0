Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BC810E0
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C89DC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665207653;
	bh=QSyMucIOtRomsTKSpdDSeK0vG0zGRpaK/kxjNKi0gYU=;
	h=To:Subject:From:Date:From;
	b=g+kIYEeEBtChIa+Igw0DP3J6l2qsgtphPhoVW6ksLJKlPryyfSoBbaK+aPVsDkLSv
	 dkSk0fR51g/h2NOyKjTv1GOlRo0YGh8M5K2/b3JEjbjn4WSTqHNPHu38lCtXST4adK
	 AyLA30L0LMUAz+tyfP+32CaD0+el/8BNfm2ITrvKFzFEL6DnMGvO9MpCxIiZcfImWl
	 20L1bGpO3pTTDUMJeoXqmQjv4NS72/jM8Fn8min3klcvk0a5mXz767xVUmO74yh7n5
	 iVEm/dTgvg51mKlsi1qMslsjLAmpbI5IUWGXVXXJ9i9841yetlrQmXCk99H31NxSTm
	 i0sb9/8mH9cLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53078C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166520765333.6352.14429178108594116468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700bb69537ccde7dd6584d76a008501bf439049335cfdbacc00a303f2b1d9eb9
Date: Sat, 08 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665207653
