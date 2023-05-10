Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400E814A87
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE63C4339B
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683714665;
	bh=nduNxEvhLXBMS2ng5fJf5xf5SsuEjedm7bg1peMSMKk=;
	h=To:Subject:From:Date:From;
	b=aX2jkqVR86hySwd2H9isMCWQ6MjV/Eq2aC1UBV0S1tw9W55jpx88ZmU+jg6HSV0YN
	 8Az9wsu2+1YbRA6IGN5OzG+lt1ekWNKipqqaqeyEXQiY5UOwwVMtzZqoEcjvoEOIjj
	 BbpiJdYPGi+uIV3Vjr3NpxTAhxuzd7zMHMRwe6uG/gRrCy+IWEOC82hQnxemq4+UWv
	 urjUSrC0+zgmdkEpy13Yk9lBY345wZ2rmeLhCQ/LEUOOEDzB4uZrwCrJbyl+BuFySv
	 wXnQv/SM32ftnD2u97RAMuqZYaDN50tKhEzjZEsoPHRxTRk6SxjoXYCvbrZzozcaiB
	 GTckYitjZ9Uhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AA5C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 10:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168371466578.31220.15064138038414815976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45ba62ef22d09a9f863fad08c8cc48880a9657cd64014c08cd3bac016b3a544
Date: Wed, 10 May 2023 10:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683714665
