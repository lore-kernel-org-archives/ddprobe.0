Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC7817C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C77CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674180087;
	bh=JMm0O7qTOEE3C2VHhUUQDbv5jVtp4y51SG3oly0H2lk=;
	h=To:Subject:From:Date:From;
	b=GLy6P+Y4TNZVxNMYtJYUzw0RnAO1EaJxkJm0HPMkGfdwtD/Z9r4HwXf528jAQMjXC
	 FgDI0YxYQ/bvZ37dmql1nrrNmxdTAUkGCjDNMcQVTf5jbljTY2xQY6GYmyl0siCYy7
	 TyZhZPCZtuUWo1lsvmCM4V/jUfDVvqs6wPV9Qm6bALhkP1H7yXPqc+EFlMFzNueep6
	 6tpffBX3eoIhXpAmVnfxyA1m6dmOquHzuDfohwqUymbenxF/bioazMOMbu6idNMlK5
	 lhyTX2gN5/aWGwM3DTE8MnwrNs+Yipni6wO5WDdEjauUauPRMJI1ktGcTep97SbdPX
	 XzG61bEge1qfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CF0BC38142
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418008749.27878.14425928367962353734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e6c59b796e870b0e14a7493de2d617d08cc23079a42a1b144c4d20850c304e
Date: Fri, 20 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674180087
