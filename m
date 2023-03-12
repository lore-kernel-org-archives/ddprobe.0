Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D2F1877
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EB6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678607165;
	bh=3499rKuiHS7mOLDKft0KzPkAupHchXcKMSoK1ccEKyE=;
	h=To:Subject:From:Date:From;
	b=feS1I6KajXamYU0Ns+YABRU14jVmrUSX7g5ttztNXvoOYG4oYjC9UJbUaOhjf/1od
	 UQ5JIMeNGCnuw2dkpwtXpe1yVbEtmLAtxpi49Gi7C97t8LUmFH0sFe7OuVJvn0ZH2P
	 KFJL00447Efa5ZCHvkNUv6M3zrLe6OnadxZgDYTW7g9+Z7oP8SheSa9FJOyR4ow/5B
	 AlKkoK3XnYhRxvCM9v26jlL82XaK7V9l5ZSsBEjQd0329rJuxevddnU3rnm/KyjZtJ
	 U/jsepKUkFDXBsROZDmUxz9/ySneRmHfYw2UecWEmR3iCDpriP7Hxd+7EJzdXMKhqK
	 O4nh/Beq5Htew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE80C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167860716577.27383.7644744145807985908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607003564f8c96ebdf67fb014204962447102cf18875d6ea23336da7699e7bf2
Date: Sun, 12 Mar 2023 07:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678607165
