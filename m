Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF9D364
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7932FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671235887;
	bh=8I4oXeGw8OOtvhXwddxhwfylSkiBD1ylhtjI8vlfItU=;
	h=To:Subject:From:Date:From;
	b=XC0bA8OlCm1eyx+OUV99Po+m0vWqAZeQFE3QYrmUB17OyYIYsnH3VQPD5s2DbMDnX
	 3E83lxfxpBoX0tJQr6Gp1KKjgdB+mQ8IHkOet20rc0uw878a4ePATmANqPh1Qw0z5g
	 gmhapgHeLOmeUnFJ7MHKKUek/yHITxFMFZ7rzTGJU7+x0q15SMSssBbLfioJmmLJyu
	 tpMz8HiRGIPYscr3xnKTqxKqBcnO3t1Z9s3tbivmMERBIBOuue3LTo64vv0ojw2+Qp
	 O0WY+gXtkUvNJHxTaEk1Qs5iyNBk34Mhk1jAWC7a8wmonfoXq0I0ySZ3NaMwyW3Ifb
	 QEoheGJIYL2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60424C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123588738.6936.2427881019831125523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9a48049aac930c2689d1b758a4052f48635a20295565c391efba6c0abeca62
Date: Sat, 17 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671235887
