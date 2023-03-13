Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4291823C5
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F37C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678705625;
	bh=Sf0n3qbeXgFS5QFcGGYFHcR+c04zXJBA/IilSZgU2eA=;
	h=To:Subject:From:Date:From;
	b=E8iBDMNpEPX36CxHob4dG2fERDqyl2ThqNhipmUWkOMkJHr8vyU7BdaKvP4Bd7/u1
	 wO8ToVSTcyx/g/eeKAt1+qSI2QOxj5n+xMYweWfSYTeExd6c/Ess0Yv3RqKzKfpGJd
	 o/HAE3gTDUcoEu9rS050PvvJYyP3xaqS8IhlaVMmJtRrWbzZ9UuONaYeKnCGG+iDw3
	 a6faWMKz6dkEmFfmStkVyfjo9JiGAp3ut3hjNDzHA74tNY72F/JKm3hPI1BW8NZh0S
	 wpKqNpMg527a6rcIHZisGKEP+0uJ/KcZ1Al8H1Du2as76sQmh/0WZd4Fmm7ajOgyam
	 b73dTQM0+thZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE15C6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167870562575.2064.14242139161454570444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3758eac37b55c39a28611d4601265d0ad7e8d4ac6cb1c3ac0817b424b97bde
Date: Mon, 13 Mar 2023 11:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678705625
