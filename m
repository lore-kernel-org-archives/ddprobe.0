Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353537B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3306C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678531506;
	bh=yDj9749ZAo/CZH9MDbD8XH1t04oYEudXxzIggb1Q6xA=;
	h=To:Subject:From:Date:From;
	b=j69JSCz8pcybHqv1hWGQ0bfuIRpvlPzutkmf1BLRcMVWqDHWBR3OXFV6J2/U6zFpN
	 UPiLGhBMrETblNGIeaLLyT/GhDlWjmkTyz3HvIABQiMy4M04O3TU1Lpzf+s95hehgJ
	 8lkhJ2Au2LwuC9sR/bzz2dQ7VvsNVhGeqOGRMSswJLSotnM6ImMH6prruibzZ/zrui
	 LU66UFsBexpSz/K/1CVL58UleL6a6N7rhTA6YGnds2VBflILtzxNEVcHyPG1fRH4l7
	 7UFrKu3i7z4mWycutkyzg6FRxvX7hwzY1rEmVhVXuQtMGn9+Ytxyim4bJ1SDDY0iKB
	 Eb71A7RwhCcqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5458C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167853150585.31686.7572505193944336731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869f2c001d9572289a2db8391cf3a6bd86bd95ae35bdaf5929fffab52a32f85e
Date: Sat, 11 Mar 2023 10:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678531505
