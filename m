Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF157749E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E89C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662159053;
	bh=dXbPmGX2sZarhq6Fhl586L8fGYM+rc7KX2FskqhlyCM=;
	h=To:Subject:From:Date:From;
	b=m1i1iSADnRkjyLY/HwzTuQZMrjhsCOee6Hjx1z0TZ3HmcB5Cu556zmjHaEtk9JIJ6
	 OyfFALfRI7e56F5ISuJZZtC5UCGMxkQY/9CYMNdtCx8OEfKWeOf8mcSJywAxbBWwbh
	 WPYCW6PbiMwr9lMg5BQBOFVt+WXpQmztZytkONwg/+9+ThTfRslnCgPM7lt6c7vAHS
	 bUmUbRonq/UUNsLDVaimcCazJ2H8uwtE7/oYftIs+Y4A0wHIttZUoFHCxQFvGm4I3B
	 PJJ1phFp8RsMgTDYoaD9ABkQZ0hKe6urJjpgDOeovPgEEBr1NjQ3xot78+zK29jgIF
	 9E2GhM5jW9Ucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544A3ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166215905333.13780.1484345647515546387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe605ad7bfa0623113b8fa5198980edb8cfd715430277f0610c9acb630054ee
Date: Fri, 02 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662159053
