Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FAC1FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7253CC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664592653;
	bh=4QLWDPwIrw58UtDqT8m+JwsxU3hqkZUherCk/GYq3S8=;
	h=To:Subject:From:Date:From;
	b=Lmlsp7gDPIyO3uHUqHcKHi6V8KgBf7jRIzDT0xQxS2qx4LIwJlXulCxqmZEBoAgEO
	 stx9V6fkpKcy+vk8Qo4PDgYO8BVZXxrtPF+m6jcCWkyWZaPRuQcXUSlwWmhimNgB+0
	 fnox31ZmruBhWm+pcNdLYMxBLTqz4gTcbCGbkUmFwRUAXaz7i/5nVDKQVN2mgKb/WN
	 x3aQlUQX4La7sNN2tx4UDWopYRmBrESKW+eUknEoENFMUMEdfObVS88b7JPwmFSt6F
	 cmqy2vEGickW/FzV4CnrxkdvvD1csy7jGmAPwmKkSZexrdT1aARZOWSfA0M5IyjaG5
	 2kfsjeM2gra+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575D2C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459265332.649.9711943635514661544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977f207690df87343e72505900be222bdeaf16128b386793afcc933d7457aeac
Date: Sat, 01 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664592653
