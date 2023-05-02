Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC3F9444
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A2D4C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683059226;
	bh=aMOcyYlejt0RIZvJLust4cXSXjpRBNZ/Cqx1I+uJqkA=;
	h=To:Subject:From:Date:From;
	b=aqdleH0OtB5E23I0dCu27y5esXybVqQSwaWAlcrv3Y+45itrUlqFRwEkZlCGQwcLk
	 AEs0nI2dhiFbmpXP1NXpwBvzDn7GVsnb5cAOLfYHjryOzrxLSz/qZRJLLLvSqSGM5S
	 nfyMfSVHdl22aYOLVgo+/EjVkMkzO8gS0HHx1qKVwEkBAezZNr1A7X7JEPEn8bCf9J
	 KdQKJD9llvXyIKv80TLgA5FKy1o4bjaKApQO5SH07d6+1Fa+UuOZ0fq78XYD8Ao15h
	 Jr6bsD378rSM6DwI2X/xXnESlJQK9Of8A7vEmZqWazECfNYkf4sRzqvyCx6zTSEkmy
	 1g3fX87voNBzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D472BC77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168305922585.3795.1927215710009834623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608a2fe6fd901885095e730d03878e972107e99e4da5ba800755612e92264685
Date: Tue, 02 May 2023 20:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683059225
