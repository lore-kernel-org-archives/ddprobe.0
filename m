Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B45C7E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE08C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670655687;
	bh=T1Ek+GW12la5j5SzRQLhzSqHp+yOX/jfC/1LsfiZE4E=;
	h=To:Subject:From:Date:From;
	b=rlDrm8ZfgW2XIeY9Yw+Ca0VcVwUP35IfPn4TzkanS20+DqKPtDSHmSIFCxl/4jBt7
	 NQ3i2+bTYHM9By7Mn24GB4W5oRcqquPhQXPhnIIxL30kziHTFSJSjvuPn+Im3p7v07
	 akV72/Wpq+34M5eoMuE/YmnAK7Mx4SljDb5/OIAGbJYMNikQ927K/HX0dvHYxH5eco
	 RU8OvLggQ2XeanhfEUymJJ6F4/17QoE7ZSF7KYk9q9UlXBHRoS4P8DSsaU2lTKei4m
	 tttxcFZjb/5ZO9iy4S+/et0GdqVnojxfG9ViyG1KaDswHzlC23wMeNjudeAoNSbSPo
	 t1tMLvavfuRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 773A6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065568745.6720.2401785759588999718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca479d9844b793b2ba6882e5279a857211e6b19c5ee160d608ad5d6740d9b0f
Date: Sat, 10 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670655687
