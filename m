Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8851363
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90089C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673854287;
	bh=H3c1faFTt1PH/OOzHW/dLJ2WHRm7zDZQY+rWpQaUmsU=;
	h=To:Subject:From:Date:From;
	b=IqnlFyXPtkjj2CzWVxZklk/7dN3nc27XUCDnKCyMOw85d7gyQpZG6yrG3TnJD4UVA
	 46WSR6jrX/QB5j0FPW8ShJEd+K38VXcH0plmRN410Uuq/YooVCBv9cv4o+E/KqS90a
	 oOFrW3/tuaOqEuRORKUcIcPC2r4NXTdSwPOEu0GFbbDnfYYb6XF14LNRmh7URGMlvw
	 ABNYqEU71hqtSTx9Jp7ftZYwZLOBNj4aU6F4HVyAm+rfQBHqYeNUjTEw0Q4O4hhKhA
	 L/dAQu4lqRvaI2xCvIx+3JZbWYWkU8VXm2hOtcOK+WHiBHWfSpbwU4N4MEnLSSCU46
	 mXpKfya4Wiyqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71335C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167385428745.27316.15798104985294124659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1e4abaecbf9dff22538712c4671280d5689d7bcf3e281efbd19dfc9ff9f7ca
Date: Mon, 16 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673854287
