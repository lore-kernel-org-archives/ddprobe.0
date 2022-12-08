Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3847F3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F01C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670493054;
	bh=9hNbRGRLIR/+oDkEvzxAQL04/eVFpAZ0WojUEmUAUkM=;
	h=To:Subject:From:Date:From;
	b=cvpCrlLlWddjP01zfneqgn2D7ikKEQwUIhaJXXFtiSWcVzTEVU6dNUGI4IwlsrYQw
	 2nYts42Jk9GUNM/227b9t5kBmjmln6+pcSdEw6pWZ0FLzbRSogcUuAxGhheKZRqJL/
	 szB68BFZIlGfb8QFRaBIuI8SNAbMqaxF+auCiu/Js2lxkP99NCly0il5lHbrmTVkIi
	 jUdBNX7B3ZTS31Gt08uwvJ19iPtPV+DCiBLWw2AS42gH8TTdqsQu/j5BfHYKQvavEz
	 AQeE/K+6V99Fo1yg00sEBvENTTGivP+RPYYKBFY4QAsZrafcZ29NDkU+KhK7f0vhWF
	 qW8Ok5hzZoO3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C98C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049305435.531.2285842289117042750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00fa1e94c04497042a5dc1d4d868feb234e59d8df7aba8b5a842d5ee2f90770f
Date: Thu, 08 Dec 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670493054
