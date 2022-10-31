Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E8C194
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A347C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667183454;
	bh=ekUYX2WyrYB3enba24B6JqjZESbFcdF4HVNR5d+Ry3Y=;
	h=To:Subject:From:Date:From;
	b=bYCHoFF+7MRlcx342/bXG8NR2eXac3en5dtu49VpzMvh+qgcT601syyh63nhkiJCt
	 /tdKqqbigyU+DCAXNecgEEZIo0no3axf6lC4aVw/QV+fYe4CkjrS+4GGcyB+BIiJon
	 rXbQ9eRprX0Yy3Ly5lISAGrQ0EiMPyH+byocP24+W59I6omDalJYu1h7HqYF8ABfbE
	 RJdz0mIqkYTGb1Yq4PJc5he9pQPbF6zcWVNkQa43Bs6mOZmArzoeH1OOzWaUAkYHB0
	 zhJb6z5Rxu7Hj+uCPsC/LUPInTOIals/9IHxmWajDnV4V4yay0CoBAb3J3ud8zrqMk
	 NoI9ODu5qgFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEBCFA373D
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166718345438.27519.942307725681670399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c150c771665111025674c3c40949a0319a3e657e62bfa67e3d348c0568f409bb
Date: Mon, 31 Oct 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667183454
