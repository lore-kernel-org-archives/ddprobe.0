Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED0415B5
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 05:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC6C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 05:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693547048;
	bh=9JnOcw8a3Egce8H6t+GiSMd3zO/ViIjU4BZYdwFaPO8=;
	h=To:Subject:From:Date:From;
	b=YxDUCUcjsbKLJOzrNi6w5xYgFY7AnBEzKGHo572kfkt/Pi2ckqceoqF7M+n0mYL+K
	 0a4K910x8528ac/pHgLCXtkabA2AQ5BPfQ6Ve4adBBc9v0i0odDBu0xD6LXxzncbuA
	 vHkXOBLt11MY2iXLVQWPl3rU8eSJQubeAQyQbcncbMaMLTGIbz23eGKHAsQKoRxHie
	 YWr7g4Dfvn4RDMdJuz5gZioL/S43FiPG5q1AhLGN8ZOD2YVSG17gTaj6tEDiS6KHSr
	 Bddowh5ednA42pJQIUq+t9IArJ5ERB0zd2oBYtkEy1F23M/PAMCM2QW+hNpHoUADiL
	 XBbYAGhLbljRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD72ACA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 05:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169354704868.14965.4292367261581925674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08140717d22fe136e934c21a392193218ed2d5ee60c0a7ded6cbd33a8bc2a376
Date: Fri, 01 Sep 2023 05:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693547048
