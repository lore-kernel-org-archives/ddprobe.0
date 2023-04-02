Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5175428EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 09:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A23C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 09:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680428105;
	bh=khNs+6U0Wprdt4r90lJxCnduA8lLBAJpNqlpn7+KoQY=;
	h=To:Subject:From:Date:From;
	b=tpUx47IE6ZyXNOGFtOUi3y6QP1TeRJP+1fr1K3YVrWXkt90fRdjToIX1SbL873NsU
	 Dy8GoTIonicqCmqdhn7OCuij01Hdd7M65/zehHgtIyN0Uvo/rT07ADeJ4DrTLJ5FLz
	 DbpX452GQAS8AjN61SQ2twUDAAQMELeJzJCl9iUD89Cc0Hgp3qIdW9o2twZVj/z1uS
	 9P4nGI49NzsIeYFaUIYYsRg1E6sJPR7MyWAAvTk8+P8XEA2hWNjvSA9Leh64TLqTBM
	 S9LTqRc9TC/OT1vApAl6y3FibpMLGJjHg1chTZcyBlyfC07eDtbr3daQ5CoWrI2Uzm
	 /12N+npa03vtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DE0C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 09:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168042810575.12771.965456380663411059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84f1e0a70394bd574501d6b1ba1e35753ab35cfde5bd2ae6b166fe8d14dc8f2
Date: Sun, 02 Apr 2023 09:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680428105
