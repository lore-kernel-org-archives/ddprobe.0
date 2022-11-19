Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67CFEBFD
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7733AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668892254;
	bh=A+O8Vg68j+cU78zUTmN5ynrUdHK+hHqALvoqXnW46lk=;
	h=To:Subject:From:Date:From;
	b=uD0sMOR+NqiVnxJP8NNh5UzvJcKhMY4buynG/f0GDy3bqYbrKlGARnY3FOWj/eS6A
	 UIU1I6G7OI2JHOcFU0NXn7PBU7zTq9nOZ2k+Y3AtQ/INBY/wnHOBMnQlQ5+RBPG417
	 RPb6W7PtMHQaJB/FvkbHoTZZtLBNOZIHR2oq6WWlhNFryAwMedx6O6qLwJxTG0Fsl6
	 qeWZ1do3234QZZDcqs8OmUS/w0p4ALEo0KQCtHBUYqcBGyMEMBAeU01PvG5DrEBlvk
	 Wv3AfzEOOha5dFwnbNAHNovFVkHOQdGCDv/854ZmgckRMHUJTWA5ksQljyTm9OyJW8
	 K75fjg5EWoxzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0BCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889225434.26027.11531577547450391906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca10d1b396f604f1ea1a12c33db6b8872c27526d34eb978655661c307b175a6d
Date: Sat, 19 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668892254
