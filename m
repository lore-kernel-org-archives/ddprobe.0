Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6D04687
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6680CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663971653;
	bh=xxsmACSO8AoYaSgOMsCgA1n7Wnn4kaXe6bdoprMNAS8=;
	h=To:Subject:From:Date:From;
	b=YqrGrvuig/ZyJP8ujQyY+QSEEe2Lz3B9Hgfl5VF1jHDMf0nFb/ll8Z6LrWd8W6puj
	 2bPcanO77D0hWUx26duayzmYF8fAPwZx3TZszOcmJIdMwLW/SMU2xbqnkQUruySJ1j
	 XiwSzUNH5vGMEfnHePXCXNjpyP+XnwgWcDdtKfR9GPbVbFyzjnH1eQZVjRghoWVEo/
	 cpi7oqERCSyDl7+lyc93UJFgnMtLfX5ooHFYCMkbjb2/CZ6PIxxVl8n9uvaW3q0gpz
	 ALYt5045JlS1swj25qBg5tqDaLB9RceiYpYCN7mh5E7FpjcWPUpTsBXJav3UDZjyZT
	 VFpp3b3l3LAEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD63C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397165331.20535.3737778071054204923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28502cfde389066364e8af089c80209e63c6c38368dd58d7835202768fcfe252
Date: Fri, 23 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663971653
