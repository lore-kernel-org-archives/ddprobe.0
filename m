Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C2620E0
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F0EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668958854;
	bh=MbGbfZp0nGMRaMyznNSX49ttqVNT5HKe+vW+tSLC6SE=;
	h=To:Subject:From:Date:From;
	b=Yka0ZTpATOTXELZH7AQg5+0VsH7bkc6Fet/p0Ki5mmbvCWtZaLz3pPmnlpDn7XEwd
	 4zN0EdmzF3D+v99W1FCDAj7kXDUqLS33u6hjcClUG1miD4PmaComkOm9Xpbo10+buP
	 /a3LuCpAGISJ3TLFHH8QOzfUqUCKQmS2/HDhrdOqf4IJWW//LqvIpE5crAgJcsFnPC
	 g3WlQNrODKQd025irrfeFjcfcALv4vQ7KXAGA8quvKsmr4MUI0t/ob2yMa17DBkoWO
	 N7XolGGhfigb0ueMrG1coeOpijzei1FybpKCwL0BYLDBCfqIZlen3rYpEa3/4vmgTa
	 CgWXf/FLHarCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515BDC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895885432.3526.17892499678897387332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc24bcaa1440a652bcea27b403560b304c38a0df1e6443ee731e07712524a4a7
Date: Sun, 20 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668958854
