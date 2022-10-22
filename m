Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49BA7B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DEB1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666476653;
	bh=bCZNlcjfJ7ccaNyJHhbcbdMGaSKaeh0cO8svbyUZOMs=;
	h=To:Subject:From:Date:From;
	b=J8mejs7bsXhgFzydP6t3JAujRrEhIJrmJAYF0DiELs/lUFh4qVeoj4xKTaI6ueii7
	 /2Stv6SKDAMu5jWtjl2bWeYMPPsugCwHuY38T63lFl6peedhjctVSzprFZW+FFwKRR
	 Hsxrzxi/5JPqpi0Rsnk2ZDg4JGPE7BTRmXKOEuNR9TdwkSN3o9jITRVyXs6mf2ELUd
	 5rZNyYKJ/KU76mW/UEzMht9WAGX4WJhY7SyCJTUegaWyKuj+liKl0Gl6meFgojrcI0
	 XYTr+LjgqCBgcOyJqikmZ1i+U7UDH9jKjr8q3Yb5B4PCo+E73TFSWONTYx2yOiNlMr
	 pyeopsBO6mQ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67322C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166647665339.17440.12388182358132177620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efafe949d4ccec726c377be87cc2be8124f1369e98403c8e82d2f862e46f82d
Date: Sat, 22 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666476653
