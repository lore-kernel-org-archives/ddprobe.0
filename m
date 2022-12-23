Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01363A48A
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A89C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671819087;
	bh=mHYdHKv/jL6zQwCQGuybSAEmgN6ZYk2IScSEhS398/A=;
	h=To:Subject:From:Date:From;
	b=PHayGMp4O5jV+LGuuQzkxeq5qtvQ9UWfk27Dndg+BcYnSjgqvdELhl9AiPjmnDxPo
	 FIgEwhbM7m47qHL8m4tSdTjNE1FGDYqaa5mY71s88A8SIKDqcaoOXx/FpXg3Xk3lCS
	 mtO9MsRxlu/F4otq8+c1Hscb/IOW8xwhQCLv4mzHmUzHgXwWkbpQvZXhDvtcth8+LD
	 obdKPqQW7HFdkTuj/tblpnBmVeilOUWze/u5PDpYEL2Mkbvd3iKoTQ6f6wiUzd0hZZ
	 Cowk9eWhYPorZ8TZcmd6koIpDFvWWgXQYCqOwqAAGUKp8GSI5GIgffT/6pAjEquBuq
	 s0bYwfF3XKluw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 869A0C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181908753.20470.7915476890557672652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b66f120c04fddc7e60265011a182fdb6b91aa15e43147298ab0671ba68ad51
Date: Fri, 23 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671819087
