Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5287B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B2FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666876854;
	bh=g5EC6xBZ8Rw1xsqCms+U8276r2lZQwBR0WWJFi+Qvns=;
	h=To:Subject:From:Date:From;
	b=lX95NSSAdwAGuuVp9yhwUC30DNXxXAik0XYkopLLORYNZ8Ym+JA/UnJ+3oD2vIg9g
	 Sb/f/jpEFl+Kqb4ek2ouKm7xm/BYQIuVuyZ5ZGK1gDerzj5pg5pH/HZihydJR77sId
	 MmeHRDrVkvHQSfi6PY+Ew3Gna1JW+pChK5NdkRLvJUZAaHIra7FUucmpb6zpEw86qS
	 N/Gh2ElZR89Ga/mnAyxGFl19IfhGBM//PwQyYf9GmMxhLIRdn420LHdT46agv4tUD1
	 TtPBWudMWlYY1Nvq+tuEjr2us3fVAOosxYW/6xWs94QSHTivFMROEa81LMuG+fonad
	 cO0m6Y0UxzDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB75FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687685436.24193.1315182452946410084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888c8d7200924c63729dc00d4599869b39cbb6dcde34bebef20c7dbe3cba163c
Date: Thu, 27 Oct 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666876854
