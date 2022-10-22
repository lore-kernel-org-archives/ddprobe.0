Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24E67B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9F9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666440053;
	bh=D0Uu9Ne0aJkKkPI1O3n2V1KXTgtYs0eV6Q16E1x2i5M=;
	h=To:Subject:From:Date:From;
	b=P8dw45nYyWiCukU2iBNkyBkRWOlrINb+apfN8MFXl3O80kCPBht0PuWkbjXGZtxOW
	 dymCjbLtYpb1/W7TCxUv4HZCf8UJiG6ffqaQd+aAoeMUdDUt19BnYisnMLWTw0rz+C
	 5CkNWBPdgqRx9XlggAGSZ2DbccQtJOzD0iOyooMeb7J2dMdqtoVakc1xy3QYE/kv9Y
	 Nk9qUY6bZm+mfZyb8pJOZfB8T704iZdQ1kXpbZ4wxXlt3lt/t3vXX6TTvOs1aO2ZEk
	 lrtkxKw0z6uFa19q6dsH37qDcqkUlSwfLHSIo2o1QgItTqnnhXTGmxhjG1K6WGT8tk
	 dMx3I00tKnltA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED99C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166644005331.15413.801167524150451055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b831c6acf8e202c1def37f36868d24a002a4d86f1985d547e6024d9bcd92536
Date: Sat, 22 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666440053
