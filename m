Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0058A36B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95D0BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671285687;
	bh=ZdG1+8SbPY+/2TJO+BplkOqv26tWZLBAoT21NwZczWM=;
	h=To:Subject:From:Date:From;
	b=F3KN3wcpHQ+8Po877Ctoi+aW1DKBrsrNG498FBbn+kfJ4GpMKQiQrGJ8fKRL8IpXi
	 v8EJ+TIUxPjFBcdIpmHNs2MH3ShZ9obfltYbsGPEJg9J4SVDw7UItmSlXOVTp7vL0V
	 eI7GRotUdKJoUC5jWQcmTfA/hbgoBcMIxx/es9eJx42k5NpjwOKgnGcN2ZG29K5ZzW
	 Z5KP9r+YwmSzavVMQF2MUilYxwhqXKM8AFk55n334UeSkqq1bCgd4aR8m1bmQ3Ve4r
	 qs4LOIKUmqyaWbibuQJiG6trcfCQUM4EQheMT/fMaG9Hc6LNw50OcwiitDmWAqnzNz
	 3hTy1avTT48ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7561AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128568747.27848.2448059425147221209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db84a2386aafa365997fcc04b933a370bf4ce68520e585b831c07a73dd9c6c0
Date: Sat, 17 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671285687
