Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE008F78
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEB0C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667908254;
	bh=mdLPuRd7jLFeCzf/ypo0CUvuXpkK3HyqtzTfEBP++o0=;
	h=To:Subject:From:Date:From;
	b=tEwb+sK2HWvLxhjGp05ZBEo7Ut0qkVEwwU1p842NoOi0M3uGLVhhuluqRio5FmoHl
	 od/x8rptsaSFYCO6j6ZHBdxJTgsE2lpn23/zojLAODJZJtzidjAppggcm0Ru1j7Stz
	 4u56P0KRs93F3b8SIysh8HD0GdikmFTDfhyZRAt9hLt8gv3557+vzWE9TPGQHVsWo0
	 FIxcuRr1ibilTpB1J3l9z3wR/n4LJGfldia6WCwAkbl29MD7IdSPlxrODyL3Fz9wU9
	 QUecJWFtNQKnDmqXdhGnIl9gnDLAImSk0eD0vHM7eIyR0tYypx1kGounLurIEGwfry
	 zIM2yJTYGbIVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5619AC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166790825434.492.4160086549253752106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb0be2c6251a31f1405dfb937253f312def32af0e217b453d3b433d6a382ee3
Date: Tue, 08 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667908254
