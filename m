Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35310386
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5729C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677380705;
	bh=kjVnhnspgAWYbgV/T2q5j3FVaBr3/UK+DumligyQuNs=;
	h=To:Subject:From:Date:From;
	b=KlpZK5EzWUBQC0+bJLv3UGKrDO1VXLdQ7k7rMD1CLuY5iUx0+fP75/OX0Cn8APa+2
	 iisG40cUKleZP8dyKbRglWea5oiA+jbf/LOBqUPwY+xJ9930+y1TAbIgWyL2W4a270
	 XA0ChZWOiKVo6XriB8799HQS503PlPmKmxToUfshYfuq+/+vZI3CNUle0IT/SHxqva
	 h2Xx7yNZhHFKRzf6fUh1sHKObGvI1rk9VTa2EONh6l9WCBs6HAuMMojzavdAWB6lNP
	 5rjf3BzTsTlMstNQ4ldfTPtBUEQ1/5pXvpulcSLGLf6KE5Bj5OreJyOD9j2+tm0Xl6
	 7slDbcNXHoI7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B388DC6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167738070572.28607.10758911862615281044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435d9ca80add443707aa72d06c9af1f4f04ca03f065aa273ac6030a322c91bfa
Date: Sun, 26 Feb 2023 03:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677380705
