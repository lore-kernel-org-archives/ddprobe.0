Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E110F28F7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F2BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670013054;
	bh=xrp4Yx5+yw75oLxYB044YTNeVavAuibg18evIuOX7DE=;
	h=To:Subject:From:Date:From;
	b=NAY0AfSA48opIdCpt5PSqSMGTGHn5YcFMGNOLBeIh5LkuXd+Bg4aS12c7hgDusqOS
	 jXHWx+Biy6vhYW4zhVTBTpfUszb8OS1fr/CyIm9t8+Rhx/V5v2uwrgssnr2XdqA/ho
	 klmtSIXHGWBLkf97VEI+kfN+YyRlO17ps7JguTZE0rkhosxQV7xbw1JNZd61pG44yk
	 zOF1QKXgPujyicIAaBNCTxmcBmZ0mgZlATL0S2+0kecEqaGsT70Ds48rbJbCHPMNqk
	 CfJTH8RCjQq1baBryO1EGScVO9Jyiio9cTBGKUVA3BbD3UugQB5phI9ndo/NhgEFm5
	 1+GhO5l02vP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57720C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001305433.7197.8230353219020474718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21f66d6b40b0ef9a179d2db828e9a6d488d6f9b02283598c7ee75290e1efbb4
Date: Fri, 02 Dec 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670013054
