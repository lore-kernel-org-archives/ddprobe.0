Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330C317EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D221BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677404165;
	bh=lO+bSzOGIVsjJqkm2KWUT9S9YER8oqm7zn86AAllB3E=;
	h=To:Subject:From:Date:From;
	b=dAMY1lWTlwDHf3wRCi6O+qZbkP33U40KOzMxNIOgmAccsQtl1jihZSbf5T4ryoppX
	 NypGZ6gSQV0wQfvH6SFQubNcxO/pgPLhXUlLfpAD9XrT7z2W426/V1XDck2vUT86LU
	 q5nhPsStcLypGvz1+2mCJGNSdr435hoFH+0YfRGZv7g89srm4HlpKwm0aAsPg58umY
	 ITFRoiqJNK+R99OsEfHfMaZSQcno7W5tC/jsYKkzy1IxqqOXTMnJBCalVhloP3Gwxa
	 WSh3bXi48xmnKMqBZpiO8qgTG/MtdVm+eDfjjWrhxuLNcIOzM/55N7mmJrQw3U/Uh0
	 lutSu0XBSNPqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5059C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167740416573.27226.2135231870177304603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b638589389da20bc65e2af1d0f18ed8dbbb6516c26d6add337bb8b68390bd13
Date: Sun, 26 Feb 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677404165
