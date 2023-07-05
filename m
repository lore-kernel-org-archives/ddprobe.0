Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AD5637
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 02:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA198C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 02:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688524568;
	bh=fY/n+FmohdTO029vIQui4Un8rDS22vEcuxCCQL+HJQk=;
	h=To:Subject:From:Date:From;
	b=AAXPSgGEgpuyky35bAPkqjcTL+1lJFm3wz1greVJbWQ4y6y0lWMKOqFNMyJx+ijYT
	 KhCWBj4IzhFmc69c6yu4FSP3b/vweVUrwa1U1ebA+DBJfQdvXwVE/Uzg1Fs89NpdcK
	 4M+VQKWHd5J4vYZiff3psjU7imcij2zvOXCZOaW/393YIFoZxfuYbbM3ciPboW31EH
	 3IIE05yq1W0n85s6BZa+D6f/bdOTksS/XWzZ2K2vZFl1kTJ/UcUzKnxrr3JOL3DaSv
	 +R0bkjQJK1wGt0QS0im5ukV91s5VOAiV6V7lOzL2BlNSR1IVsJ4yL2iywJ16fgtYfZ
	 EyZdGDnxE9NJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29DDEB64D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 02:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168852456869.18351.13745491001100184347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16cee590f603763b56480d4fe1569f23b3ed6a876468ef98ff217c81c423743
Date: Wed, 05 Jul 2023 02:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688524568
