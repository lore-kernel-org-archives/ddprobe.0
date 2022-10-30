Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE80B194
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7760BC433D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667092854;
	bh=T9g8kJTkC1lE/eH8kuaOywKLOenDdh7V7EuNYYwe4j4=;
	h=To:Subject:From:Date:From;
	b=CnTAnRupKUefVd6F1/nQPUcMemSzskmKWopJLrmNfWwun+VxZG3NTVwxFPieqpCwY
	 TolbpA+0M3sEOF6nRBdRzhTN9SdgtVubd4v4b9Njwu+yTVxywcq6a+veeAZ8wYCe6v
	 EMaGb9dRXIchr4FgJ7vGOjKqxRllgdQSE5LgxMl0TH2zJ/65hvI/5A+k63b/7YAz1y
	 1O4Kw/Yzlm3dVTTS6xZGJ/WrVzszQ4NinE/bcF8T6ETNUMrv5W9gFwnEemUnpz2ue4
	 6LtMYCJDN3fKOF6hyfhztjVPFhuSrvneBSLOWI+3yFUBzu/lYT7zX6N+qZdr4IJw4F
	 11CzTrruDijkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD58C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166709285434.1260.12247859438255142655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161316c58df6e7323e94e7c3021792817931e8d1685d14daceb0eaf89673e0cd
Date: Sun, 30 Oct 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667092854
