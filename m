Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AEE1FBC
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB837C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680857286;
	bh=g/CVfABk1d1R7CQ4x9frlmdxVCURFJdzySIigrOuZx8=;
	h=To:Subject:From:Date:From;
	b=a5aY2RrV+aFLvH7jPU9v+mkce68ZCBNPfLRuHQ0RNp7AoSgXDULzExje8NEoRHUFj
	 uD/MIn13j9Vc6E8xkgKwg7jpXARRNS7A1miqhX0mNahVmXIFC/ioMuQespQ5r1nUEG
	 ooT6jG+XISqMnhNJNvup+nghLIUqLltqMQiC2TLkvKh6lL2CDuOcIKu1500oJlPN9S
	 QQ5p6xYJq4cGNG979sL9FMNHqD9zJGPJGh12z+OWWpDHJg02f0cXkfD9kzLX9R2OSl
	 wzfJOiEzLbTzQjdNKCztDzW4HXhtMtaRWE/AuO7uGmV9PlOHCuKJqJM0ELi8tm4ydF
	 0PkT79CQdPh8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77C1C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085728580.17585.6151109667678073243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1decc3cb718cb890c183f03753ac9005f45b92766a4587b31f4e1f902c0574be
Date: Fri, 07 Apr 2023 08:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680857285
