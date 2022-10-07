Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B1DA5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67AC9C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665137453;
	bh=kBEd+M+jPkx8YqKUH2QnEK2T+xoMV/0/cDVpqP9p7n0=;
	h=To:Subject:From:Date:From;
	b=Ds6arxeOvPn2+s9blcBSyPFOFVmdv2F9RV3XA3GYw5Ot9wSdRowE/lIp+IuYFaguA
	 ODeoBacXPNLfwtbeVjdsHdtGYb2b/SKly1mTFvbo6quP75doJEwe8Da3BNt5SuJKof
	 aPmiUI8ZOSDjZnkWLX7CuZDoNr0bt09txgKVDWNB0Ocpd9HEliRawx6zSKy6NARHSx
	 lN/XRMOw/phja7AlzQzN9Pp+UrU6N/Prk0j7EBtjXsmXLrUKvTonVQ2xcBsTFo4iI7
	 lj1NBm9TNtYgvpmhMHO3KzxznfUW4rchyWGqte8Y6o7tTVUPGRhaLnV+y0ew7I815C
	 VoVpm1IrdQrog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51532C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513745332.19384.13166460721347668399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d759c17c17cc908fb6c946bd9cb958209dd7cf027f839440b45355d4fef2f2
Date: Fri, 07 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665137453
