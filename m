Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA2F323E
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE47FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695413708;
	bh=J1wyR8LezbNQRSvC9W5VA5TEcYISizjCLAJ9G0w9g54=;
	h=To:Subject:From:Date:From;
	b=LutUB/MTfcjYIs2e82V7ol6R+Guf3wQNqysiJlXxfaR2fICIkUxLWJ9C3GY19y4fo
	 bWOHqMrNbVNJC/S8I6Rz6aUhDjquec8MJpWg6yedCGA/EDHzv51uqso6LUDGdtpik1
	 A9uRaQ9N3lZUG0/enDlhnU7P5J5ZbznCeWkVeEvydM4u6IWgFcW49R4MG4qBdVc3SC
	 RoIEOrzIClqdHVXBUh7moPB+N2dYxQuRH5y4+e3teRL87GfzeL0QaIEdGJhOYj1+Lo
	 9E/3xyE6DDJqONMcbfw7FtD6vZ9JYAIsD6QWgrX3Se/yzPXdtOSf+19YQufzWTD17R
	 vi7Eco1DMsUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D5BCE7A86
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169541370877.8176.17740510059115571140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c862297015e903bd03945630bca94bab58329ef3d2eed171bc4b8c1107e524
Date: Fri, 22 Sep 2023 20:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695413708
