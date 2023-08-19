Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E44A54
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 05:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE9DC433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 05:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692422648;
	bh=JRJ+cJ5XdL8JQmshOtcSbV7E8uneE6CicFdt+mMJwTQ=;
	h=To:Subject:From:Date:From;
	b=XrsPPgsGFLbxPL6isbAafhnd/Ymo1GbPJuebrBvjltPM2pmhypUNzEDAr9k5RTtWI
	 11x1BQ51WvDKeQ49z5slSgEnbIH5+QN9dNWmTxqZ+g4VpIGjPmZn4PL6S0gI8hq+sM
	 9qjdmOjp6Neolqk9lUbuG35KU6JqD+gMT+E2InnK5aA/5gsytPmt21OJjFi8D7Rfx9
	 dKuwhniYq7q8E1k021GrBzpyLw5HptFPBFN9CWt+sjKg3Z8R9Bdqlwu8CyrKTTACZn
	 4VDiTEA5MIYiRxYr3da8rcu4qRBSJujE8ZvKLQdPFiYyIUNkcXir0REuFNA71ZP1aF
	 dV+HvYF78Kupw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B746EEE49A2
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169242264871.27381.14282036383837064683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84dff6f3796c48d3fcf229ef2c14112a4868debb31d0b7c51035c7c713cb3186
Date: Sat, 19 Aug 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692422648
