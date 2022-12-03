Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0D97B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDA0C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670074854;
	bh=Rd7LcNX6K+Ui0iDCOj2bstrDty7NMJ/qQW0CR3MWMJo=;
	h=To:Subject:From:Date:From;
	b=BzJqEnU0H6Bi6i4GXzQIKUYh8zuAUPt+aCg2jBQx0XuwiVDOq2KYEKOB/HqaUSlE5
	 KCxM7rMmb/t/HTVE0Sy0MZMcv4JqUrNTPXHLmIYGzmv4aAyEAlMHSQR+ZNM5+uJwJF
	 Yu37BNRIgUJw1ColWFAtiNHaQY1x0jydXZnxbdoC+bVK8O4jwczIDVnmhAq5hAc7sr
	 iucPRS1wnbh1bsLeJYtVrR6knakQZMzLOjE1THV+9fu2tG80MJvo5UoFUEbEClNtUP
	 DBCLCrN8HOXgDqxlAyk8FLBVpOuy8O3VSavpexiTMf/MZE5qmaTHb7/ufeF9qPMcaO
	 mcbErvLNZe0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5478DC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007485433.26719.15012914919093058742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1726ab8003e688fc51386e2aa229a4f0d850ece54aad38d57743eeac8e0312ec
Date: Sat, 03 Dec 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670074854
