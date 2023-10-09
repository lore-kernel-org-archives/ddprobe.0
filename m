Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A416160
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 00:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK9o30fN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC104C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 00:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696811228;
	bh=h60Rf6gMlaKWAbnIw6lCxrQTbLJZney1v0TFlBrZDa0=;
	h=To:Subject:From:Date:From;
	b=OK9o30fNef8vUOll/elRAmCVcYc05NK8guhZLgtXLZAmhRr6+2N07G0tG2kAh6OpZ
	 Es6/heRAZvOIQSYA3CR1zrf5nWiBBzF44MEG8vu1qfclmCSjT9JRS0XKwebeiiyjI1
	 trMSJI3ZUqaqbrDnBPbWgeOZN/+ecywxIBPrBUrG8ORJgq6gv8WW5PfA3W0P9Nn3UE
	 aJFdcRsnyzAxnEvtWdH/WZbRlSbwaWaYEvRg4vH1alDOrn77PUUiDUrRX6ySMvunmH
	 qipcDT40mC/YFTG+MTx1IpSrBcV18jH/lFq2NXYOdodY8gnSb9jZLRteAlJ75rhbab
	 Nmh/28qn/iU5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA45E95A95
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 00:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169681122867.16529.12708977401357576215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10cf110976bfebb9d90469138584ec7ae23ad776217f9f469f3343b4eb1cfde
Date: Mon, 09 Oct 2023 00:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696811228
