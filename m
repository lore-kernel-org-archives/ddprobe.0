Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85141110
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787E7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668340254;
	bh=DA06AZBSQhpubGUPAysPbcZyj5b3ku+L2uukzEHxCw8=;
	h=To:Subject:From:Date:From;
	b=Fi9Cz7xg441HqqLCBrvFTmawv8mz3Cg6j+TijAGNPVY/jmStdmE3XA2650hy52uQd
	 ddw/cdZfUysmoyg116rd9IvPRAtK4wGXetqKyZWS/CMJAvsGX2W2C2bDTM8rH/M1ic
	 CqGOPQ9wuma1SJZzjoAaQpSbdbMWSsqw7Tlzax0sohxOPmXtAoWbx9sIo+0gJD/yDe
	 S34Ncj+dAy31B7mGtev7TBbcHBq9KzMbPcsbi2UaOKWSafGu+Sn7qWqOU4wUkuX/aE
	 zhJB0d5odJRqGGkMiOZI9yw2kbPDS1iyEjXqW7FHk7sN5imX4DYJt1+DMyNM1xtJwa
	 qnbSLW3LeQglw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E796C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166834025437.2171.6678134032260560232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd240a693bf2fe89f1ce370336e46003bfb7c581255564a0b77a400299955f2
Date: Sun, 13 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668340254
