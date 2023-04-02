Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4980528EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 10:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3741C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 10:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680430506;
	bh=lwbkhDOEuzZyrD+tT2FR1vtUnXvX1GZ91JR0MVy1INI=;
	h=To:Subject:From:Date:From;
	b=evs8R6DokQWi+0MqFy3n2hhalxO+RLk6wYZFOrRYzHTG/eqgy8Kguhmbd6sRX7+jU
	 WmZxStKArw39d7xHyEMFHTDID1HQ5wRFc+dQV/vRjddP8E/7YDY3oZW4RQjFRjZ11V
	 kmlYosn05Kt4+7kGSBhgbPVcGHSXhtFKLgwvglh/E2n1fPrmZcwDiKEnlourzF3REi
	 YLCMO6mNw9aO/Kb4oIA5KrU0wPc9NWHMVAaHk02NOg9SqczVCmmw423efK5+yDMSGh
	 PNgoqULHq90jZqBqYxk/U//otnDRT/+3Rn4S8WIqL7ppHzG+goyoIUSAXlpGb7zbPk
	 HfrYUnftk2eUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3FD3C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 10:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168043050585.6813.8436346447186078520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4d2c747d169e71378199a3cde64b6cd65ebc8467d0418ec1b6810994618dc2
Date: Sun, 02 Apr 2023 10:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680430505
