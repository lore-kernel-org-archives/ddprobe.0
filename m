Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD287E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 987EAC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672533087;
	bh=in8BNuXHl5h4RfkQPM4mWs0q7YlRjwmlUNISJMbIuY4=;
	h=To:Subject:From:Date:From;
	b=BSvY0VDlf1ic1A1ELWoBe+b1cUQPp6S5xWUcA52wj+ZbAUR1s6XAw8T3lq/Hhjm7s
	 m3oCa4APxWhC/8HqQSZNU7NiIajXDsUSCp4/lxSoxt1b0Y5yOoYpnE6FuTF9NPuSNj
	 vO8aq0nX3crpk0vwCVqi3sp+pppYfLYQcdp3n5gZOS7EU7aknVee8gVjB3OEr9j5Gm
	 CXAC4ucVWuhCpI3CYWs7wKCTrGc98A7Esy37J60rk36SAO4uMT6woQjFRlgFakf7Qy
	 jh7gkNbLk3A7dMTiV+d3BZJmABSIIJLgrFA8h5Qlr77OMsfFsghwkzAXKljxAdLm4c
	 Ha68rASRCJZEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78571C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253308745.19998.2199649611870247402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61be86f1fdbebe3b24cd3be7322b47c2f2a386d5ca19c0f65398b5335b7747c
Date: Sun, 01 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672533087
