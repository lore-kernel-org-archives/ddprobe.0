Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79132F35
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694A8C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662246053;
	bh=Ig1POAAaiT6UOqWIsz99xP+UcIP9nqR1K9oGYIK76HQ=;
	h=To:Subject:From:Date:From;
	b=oUBA6hQeuqCITV3JGdKUPlujW5Vs5hjqMt01y7HtCVANmGYkGhZmMEq31KNVutQeq
	 d2yvsTXnmfiXgiaKK8R4gbpDlYNhRuFroEkAzYVY59bHri2guJOLiHkmWF+9N6nVPC
	 AGyoxOzh0JettU+U3cnJZQ+G6sm97VR7mJQxJ1m/zGFzl6X4eapRvPdgQeScyOtTSz
	 E6RJOAzm6FKSWv8HbDQZdFn0ZdvERMZWWjEhLayYobGbV4Ig4+7GQMc036b2yt+Af5
	 Y9vV5QKWgrxgZXXelmLc0CQivBIKW28MmJTzAT6XehUBUXlUnr/0U4+3WbYEz9nhcK
	 FzOj7X0GWzXZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50334C6FA82
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166224605331.19810.15041633389164613934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c4afca7aab3e5417d98c6f7ea33bfb2a6a1751a053b57c3214c0a70acccf28
Date: Sat, 03 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662246053
