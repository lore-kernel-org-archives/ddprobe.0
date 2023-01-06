Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C788A7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BD0C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672974087;
	bh=5jJSktu8U2RF95+8xOG5DEElVk9AdpgGhr66OepNes8=;
	h=To:Subject:From:Date:From;
	b=tEWLfumVfzLIJwTUVUjvgGz0PzghTLUq33KAB7gT0SlraFVmD852Y0slBDpem9GI9
	 zW1PRUGFZPMisz7IaKIEAqWl5Ab8p3abbfW7QhOURc3Zxy0PlY+JkP2aXsQ+Q1vBya
	 8ikpPfxA4cTScGJftGo4k4b9aBDEsR9SXg+cV/vNc7nX/nyGvvL/cymI+oVVzn+QWw
	 2OPFZWNCnYh0690s3bDQHXfPFdnFilIIVx5axTIWMkwFGmf+TLICy+GElXCkTbFOgC
	 urNrewp/KVn2//tSLTxcyc7cNxkC8dtkDxUmK6ssDDlGaapyaW8WEhLqhQJoruub24
	 lqi0BWdisxEyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6159EC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297408739.10210.14488957198800683692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a952847b94db797be026b207e419f720d0bbda8c14083c8da4259a489d85426
Date: Fri, 06 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672974087
