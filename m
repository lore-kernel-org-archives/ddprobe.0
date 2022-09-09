Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5ADA36B
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75AE6C433D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662721253;
	bh=s/6riq5eGmUQSFRP5R2zSw3/8ssQ25GAajPQc80/PA4=;
	h=To:Subject:From:Date:From;
	b=cmb4AHbCKY2ElcoNbrulQrPA1yI7ZNjimy2d4ayTn9fjOjgB6jCOnU0I9IbNICjWR
	 +vszIyjgU0a6I6C4NCdWl8fikRCQeQ6K4dAvr9d8Po0Iv/ZjUtdXVj9Rm4Gjk7bByH
	 FoLE0Uab1tnCHq8v4EQ9A36zosVVb5hnb0Kq2GaOuRji9KJLFOA/16wmLBBxcz6JMI
	 5O2D/rbuqHY+TrDLBib19Ig0Jz37whgn1suHED47z9ClUcVxMh/XmCmiYehTJGVgAW
	 cHH4wp9dpBrPtUXSB1MJ6RFrH/u04omANKfzOXe8qXaB3JYYiQz11t2/QJDU5LfOSj
	 oysG9RL2U23ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5785CECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272125334.21971.14389213291806943901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a5ca0686c8b4d17a2cc3f6375c01ba9f9e34964c4220548a7f86c1b941802f
Date: Fri, 09 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662721253
