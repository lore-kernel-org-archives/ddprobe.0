Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA28D80A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C95C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661949653;
	bh=ietUrB4vJDVZ952YjR7mkSVyFxmD46D69pvYAxi6akg=;
	h=To:Subject:From:Date:From;
	b=b/m1w8StJ6QaEuSVIG4LIhvM+1oYf+uRzvGRIiw1ytschss9VWshoFv+wgDZgSxCp
	 PHJHiQnFwCxM6ZtpwS2HujZFA9tVIysz8GFEOCvO0zJln+En5uZY6CPIhOJ2flD/jG
	 av7W7QBir0UuUZchctEUY43/n2E+57lvjeWRfoKqDLXNorG4w+81kzRwKJqYjEkgTG
	 LGFOGzGACsjVE+L2jUuW6O/9cwLsXtBhnexjrzzlb6ajQI+h7jxjRt69dJDMKhduY6
	 EyzF9Kvq9W1iUj6+sjboJpPIXbJvIm74A+zXviSMEK0xmoI3B9WWMAkEU1PXmgkGqM
	 txdJnFbgsunIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3CDECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194965338.8116.5624533544434070306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151c33a15f878f9436170186f8b1795d041a35673dd2fa06e4559c8557222ff8
Date: Wed, 31 Aug 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661949653
