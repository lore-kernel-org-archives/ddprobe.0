Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D562F7B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 878E9C433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664880053;
	bh=eBibZhygYhJDChm1aR1fGjQCNTb9BQof+o4PYV7OvYY=;
	h=To:Subject:From:Date:From;
	b=E+SEtsLiX0S1RdeAOfp4g75o3zAB/MsS2pwbqs6vmAiCpd3sP8DYS7IGGs7dBsc3O
	 Y+X4FFAsgYydxTYdh6YyWaBYBMMiwPd8sw8Tat+5LxcqxLRLfUC1PHcR0rJWV8Jjlx
	 KysNLObVCa8GUz1svMF7dUxPtzvh+5m6VRS2zfL5c4oiq1T471NmJILtFaaVIbcTA6
	 MN66bkdKPXYDY0KdxOdDJc4/riq6ARZbdf/TifUaoimVfgKTvvHzY3uc8yX6IoYU8k
	 RM9zzme2OK83/q4gnA+4vusfHZJ38jy2c3mqRpE/ZWeGnJnuPWHfji7SpW3CzLxl28
	 e2iWgzLToCWaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C084C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488005343.13548.487830783035042572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b946b22a66075b43042044a8accd8ada5fc996b6faa3f808375eb170e49bac44
Date: Tue, 04 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664880053
