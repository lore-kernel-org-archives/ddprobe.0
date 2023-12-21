Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECB7760B8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnSXby8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF1DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703191096;
	bh=+/jW3pzhce766P9jKzqUyS9jZcm6euv8r+cghV+h4xM=;
	h=To:Subject:From:Date:From;
	b=LnSXby8LBOtAU6TdhLcqeICR50Mr+ddPP5C6YOAira7Jr3FM5WIKbIerpKKpqkK9R
	 SKu44cmgW230JxK9GzTw2hEAWwiCuQA8H60DOBVX/4uKSsssrGHemB8rWaVSag86PP
	 SVSdoZq8l+myspJaPxyU2oQihRKp4vIf4bArgvtw1dAi/SHetCLl9ayRQsDDdytKYB
	 CDDXHCfjHtfNsNBx1NsYft6IvPG5DWxQ21sEWMJC2zsBVwMrqia5EQeuo/F9ufsIDk
	 FQf9eFES9scmaVvm4gQ7cf5gIoGcLrUCttbSArkb/VnDTiyfbaDuXmitk8GXWDf5Xl
	 VZciPty94Ub9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E6BBC35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170319109644.6327.2432417989502312246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa7b303069456e51b1caad1051d3dcc5c7792c27cf9674eb860edc9f4bbef16
Date: Thu, 21 Dec 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703191096
