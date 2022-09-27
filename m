Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1187F4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7113FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664279453;
	bh=F1KEd4P5BqZp/Hycw9aimmerCDCB35NAEDfr4wYR/KE=;
	h=To:Subject:From:Date:From;
	b=OCAJ1rBEoe7QhYviaVNCTKY2qeWatMSVHG1clPntr1rf2d1dSX9SN3bjYNtfVYscb
	 F+SnMfSFBevHrZ+VbC82o5+aFWoSg+eE3mXsl97QFyfBxEfFluubAIq/O2w02dBBWZ
	 hPqyo206j/ouQCbkgZesGvwLorCkYf50hALmbAfIDJxENqr7rVQvbPLifhq0wH+M0j
	 wb5iwJp1f60gcEFyfRjLBkXGGb3yYa7vrauUKe8IlZEFO6pLzhf0kLVk9gWRVZJ5fv
	 Coj8ZDuzws1JryRrDoLor4WVpJ8bmXupMS/HrAYFG/fscJ0Qq9Ml067TENmBgVUWkh
	 y1zJFz7cpxFXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582CEC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427945335.622.4353279598888448037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3324238a4db5e0a5b1c442a8558bf819fff776ae0414005f0395b6b9307a5977
Date: Tue, 27 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664279453
