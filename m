Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7DE6D19
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 11:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7468C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 11:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695815768;
	bh=T6GL6uYi+mC/vaC1d3Pkhb7Vr5JT6dqCgaMiXJHqTcU=;
	h=To:Subject:From:Date:From;
	b=CWwJusSAW6fGqMCJSJPOBCde6Y93LDzqTi0/I/Xriece1LuMVhvXyaCXK6q91r2q/
	 utNpUXfRC1V5SQ3LuytsBDks4lTq4DnS23RESYGNkXuyCwifczltnG6/4Rmx7KAFgk
	 i3LdVagjZDvnlTFwjNGRmeqn4pGlW/VlZrXZ6Vkn/OqyOIRvtELkJJEjdOsupOpA5i
	 EekgKMCOLUmRS/0yi5Nl5WFcVlP78pQfqwa/2HfITB0aJhW2YuqShPHiOoyGUoZAdu
	 Jy+jxU97Xe4JpB++E1Tx6bYm8qh4d3WW4cNKI8fUmr8YLv/uxJIwTaxyPvHqqBTfMC
	 bghIYly5sWaeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD5E810D6
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 11:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169581576868.2522.1260848497637190285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4667f060a7b90a2f73dbd31dfbcdd4234a220bd7a629cdefe2209809d4a92d4d
Date: Wed, 27 Sep 2023 11:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695815768
