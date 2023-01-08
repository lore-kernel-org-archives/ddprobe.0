Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62993C2D
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EA1BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673218287;
	bh=QGmqKsFv3aWl0wKcwdx/SL9yst+s9J712PlOtwsDrKQ=;
	h=To:Subject:From:Date:From;
	b=WOVrKT+wo+l8FuBQ5I/cjqZ5nGmPGvx2jEgSacFjU4D6yv7Utgg2yRi1otFac4Y2C
	 WRRwIA9Vzbo99AmsOtEd8q9bSEUWqsIRilX+Ry2us9Nk7s9UYhBclhDn64EM23/wxt
	 jS+pOekBps4UTZjFvwMH7f8Khk1RJrR555Xifx44f1rc3IVEPZm2HvH5Ifaa5tNOUn
	 L509OalK7IoRYzJ09JrXzhV82GFKiQX6yRwvyIt/scJa1CTjiEw5MOztlYSaoUkuVm
	 MCyotcP2fxoIeFxEbg2ic12qsTkUidH6UFZpdtpADXw3MEM0ijl1dHj5KrlLtuYDCl
	 3Emc6IpsK0phA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F304C54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321828742.13466.13399209403282502987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48aeab4bbf1e1aac1211fbd177de39cf1f4a28800d3aa8c121f8b207d5a4aa89
Date: Sun, 08 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673218287
