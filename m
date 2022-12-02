Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03D07486
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AFBBC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670019054;
	bh=H5GYiq7L4LhIbEUMOrK35uMRarxiVl27VhWO+cUknzM=;
	h=To:Subject:From:Date:From;
	b=RrboUVa71yTZR7/zDa39qIWluVPEvZlqkMfRm2m9AMo3Dtd7sb85wAnUkuaDchJXI
	 6VcEUUoEPEWYK4CHFJB6wUPo3Uv6RwHCkD/k11iyeGoK7fd97ubg4Gd5QQ7TPr18rx
	 hq33GGn+JWka3VA1/cq3DXOs9YzdRhOAM7g9cOUHEAR9gsg7H6axv5pXCldgvYbqMH
	 xlwZYQR4j80ahLRvkI8l7MIjmBozcPTHAQ/578P9WMfxp6x5j34wnUzBfZq5jxFMO4
	 WpY14GCVcxRQ0F7lU7+d3MgrNBip2gSG1T6KFDYs6xX6aTF3BDNBpFzqNXCOM0ecuN
	 fC5nUyGRx8Y8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDB7C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001905431.11927.13361067699978615415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f26597fe1d68b5627c63675939a937a9a9b9c8dadfefa8461e12a62b3306a5
Date: Fri, 02 Dec 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670019054
