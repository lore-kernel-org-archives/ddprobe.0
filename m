Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE937B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7845DC433D7
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667075454;
	bh=kqk7nmuQ2crPTC8WPYJvQqzk3xEsfbDu5FLOn+PD8SE=;
	h=To:Subject:From:Date:From;
	b=RvBA1YWgz5w0ahiWEiRammbk/kO5gtxKOLmmeAgvTpN3i0+lIPugYow+WAtPWoAeB
	 hj0DLhpDUIdNkr2ixsA5tOHJprfTEP3FcniOxZ6NlxMAy7pQTfUR9y9rMMuWX2RqrW
	 juzxpbXtYcACuTGtz5i7IpwErgHyJuO1FPTto9cwWRB2yW2V5lxN7XvNSQVK3X5EJZ
	 QwdY84UMgPeBRBD6cTT9nb0V3vdwtxKRDZtxpE8btkACUT5PMsMgoc6i7rsd+YS8bD
	 eh6LoFNsUSOxi4HycF/h2HIWNz9LJhiq6kjMyz7BzWvMRkkHrSMXCU2RKULXPOfKGf
	 SAm7JtFPaZKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59915C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166707545435.18713.5114429644656730319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78727e35a6cef1aad891c36116a725066a247adce969772f1b84758070504dfb
Date: Sat, 29 Oct 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667075454
