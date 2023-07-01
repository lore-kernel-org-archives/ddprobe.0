Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A221DC2F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F217C433C9
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688225049;
	bh=pRoRWBD+LnflcmTmHCTTJHsduKFOYnm+h/LNnCy9aFo=;
	h=To:Subject:From:Date:From;
	b=azO96/VHB0zuP3Et6bXEyuavw4PLIg8fPUs/5dAjQrxTD8cy1go8MGh+GWTX9VPNZ
	 mFfgac4483u20gcclPvKPvL21BzW1NKkskWyJoQxWx73+qXqn04hzC9U6jxhuye31X
	 fD9gNrQ4G2ZhThacXuZbuG2PxQzZt6XqRVpiRHoNyDJflbaFuBEql62ZnbAAUbgKIP
	 J5kA5sqfBf9HbeypzV3n5CT7Bq1foAIaWNxVG1b3qUgFF81S7sgofwImt0wiNUdSc+
	 4TlYhmUTBzNAfM1sZvbN3W+Sw+856/0BiPYL75dopbFtIhXrjAEwF6uWPCtJh7dCk+
	 0Wx+2O/VBWNzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E39EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822504881.2483.13092761688461056092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b692841dda574c69fa15982a6e149a522205881422d7cf02f11048b86a26c6
Date: Sat, 01 Jul 2023 15:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688225048
