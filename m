Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEF9A53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5F6C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693076048;
	bh=ryo16PnKiu5iaGTo0xAmI8RRdjpJ4G2pGHe6ZX0WV/U=;
	h=To:Subject:From:Date:From;
	b=iWxA/rK5rYeVXH33GqgCqDlPD5iNicc9LvsCofycrOwlOygtT52qaJ+nmWlKSbojN
	 AIzwu+paq35eIuKaROHu5C3sNPROspgOjLobyKXv3iXD8C+ACpX1MU/2WmPDkihFAv
	 jdTmHrJv/x6vOzPKZEDsFq49n62QWhxPyeUzr4ChUr5zot00xS/eY6RTIPg+y7zfVZ
	 A3fScIHmD4pXA4SBq3n5eZ0ig1oUiOBzInyM9fqjk4SJYcDkDoK9q+axMb4tJ5AYuj
	 8i99ysBYEoi0lwtH7z18J6Gl8rnCp/t1WjTRygsLXTl0vQPKJZUR8RVbZtfqcTpnVz
	 OrwaKHWqFNLjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B2DC83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169307604868.12843.13524669845328881185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05b239935099d2f79e994fd4f99f1f5b13b01ea5c2a6825a8aa4f4f867fe44b
Date: Sat, 26 Aug 2023 18:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693076048
