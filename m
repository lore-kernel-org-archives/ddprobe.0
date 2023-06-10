Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08CE290B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 395A1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686436926;
	bh=QbRlRNGy+nxE3wIE7BOyY6DoorP+/uWPL0XJTHaaJgo=;
	h=To:Subject:From:Date:From;
	b=Mcckz7bzAmCxXUKabanxtJNHZpySWBuckNONOE6KF8/Tljt9a9x4x2/ADj436UozO
	 LhjuoVL4/+Z3YzCzRNEtUXkgmOUsgTNG3yd0uCiRXf0SsYgC7YGAJH0WyBPllRxEo0
	 lcqnxWhFw8Sxz2+mR1LJ2Sm7KLIceMVEfo2BeK4Rufkgx1Fevb3XZsBG2UrFOHWFFY
	 jXUqbtoMUxhLazzIM8kfhdFd7aOj2wQ3WJ8Y6PLT90FMrZcX/+ir3sP7MMbopxN4FT
	 G1lXr415s1S+jwBmr50WKvzjPJ5pqnGw1oS5FktLNk2fhdbJIRR0Sp6Yr17KNsk1wF
	 iqc2/8w+Y62nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02384C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168643692596.2981.7207480065714655189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321651773211fddb9c679a8336b32690926b8f802bddb8a5542aa60c949ec92a
Date: Sat, 10 Jun 2023 22:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686436925
