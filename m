Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089232770E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2014C433F1
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673028687;
	bh=k/2nzr2a9NtLwZmAp7lIM9HGzu8vr9U5P/jQruIY9Qo=;
	h=To:Subject:From:Date:From;
	b=ZnXKwOkB9VYAbvoVD7dteq9ncKaOoKxmcdiBYInir3b2JtBIB38JbMW44r8lxMa0y
	 KRw4ab6R2hq97PmJx9WrURRTlaWlJ0fVifGX80JK9tYkw/T0K28g89pihzmNV1gnfS
	 uOa75grrfzDTc8wDQJAVzZrpKIwUoqLbDJ4vTBPK20C2DhGmXNu7yhkUJaeTXIb0qN
	 hfOvQsQJdhnHS4OhgnIIRXL34gF7uxcwmlSaffE7rH5dW5z9HMQF4zZWLb5EJDVyER
	 Ps9vlDpvUQGvjxQVFw4Qq3gO8AQXNay01gL/3vnSms+AKWHAWxmi7VNVrWQ0y1z2vW
	 wmRJVXK6Skp9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 820AEC54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302868752.5662.1617475249476812070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d32823f2820a5367a5f3ccad6fd7ab5afcb3381ae3c30e40be6711c19229cf7
Date: Fri, 06 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673028687
