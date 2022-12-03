Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFD01FB2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65DA0C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670042454;
	bh=dCSPCLbIlQaibBU1ZuE9Av/G3OSq3jEmovh25AZNe6s=;
	h=To:Subject:From:Date:From;
	b=X4m/7vwSLXqlaj39YfQJ2hhxH72acAqAHrKWIbGw77FKwuQkR8CVthx43lUXbm7ED
	 DioyN2MlTQkdEJSQXc/Fg2SWDEAo286G1EDnBEtvjT7hdNTVMpMkZOAsBltJZrDCEz
	 EoGrOH/bEnBkM5wBJQ+jza6c/4Wn6C0+j9EBwg+d26JuPXqu4+nJYiljRN9sDFejzl
	 CO4dluNEiG8QGd5chkPy2YpqzVrOhdLjtFTkksg6IaPtgsplE8kEsY0y+dzNDl0WvH
	 3FZ8vBMfvD+5d97YHXXTOOGTldqfCCpv7X3U9WVZtaz8Yk6Ei2osDANK782iOereGN
	 VcC+vfHcNKijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0A1C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004245431.15153.16235175056515410231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30e8a00270cee043d33cca1b76adfaf776af0008af18899e5cf891ae035d88a
Date: Sat, 03 Dec 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670042454
