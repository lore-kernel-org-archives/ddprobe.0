Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367A07C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 06:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08FDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 06:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684476485;
	bh=ubSx0ONIOt/ujPN+wmLNxhV6dWa5FIhJHF6N4tpz1bs=;
	h=To:Subject:From:Date:From;
	b=swTnnjyyo6xtRc1/ZpDA0LVsg8MyybytzMWziSDAJB3jGQx/sWy+9RI5aHUBAyNjm
	 SI4S6xXKpSXk7/ay8LZ7wNGhBxGU/cdasBXX+laMGT6cQ0eTHTEdMRCazhE9TiaW1j
	 h5v831qlsdSVQTpaIsAwvf+2CPK2UnWNze8kaw9VpkEGuiKvmPKLAPOMSxuutx9jP8
	 vkB7hNUkaMxPm0aE8631pphIoX9PoE5tcT9wbJuzZ1RurPv5DFl3xoFvAH981FACNX
	 AbFbgUuV9UV9YfnY2ov5tr2WeqiAL1tTR2rf6hLARW7F+kFBFFcZDkNAzAiO+bJX6s
	 yM9TEV23INDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0439C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 06:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168447648578.21794.18446010383214288838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b53fa306ab09a6ee21c22e282d157d682f1a33e2220c71cc7e072ffb8eaac8
Date: Fri, 19 May 2023 06:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684476485
