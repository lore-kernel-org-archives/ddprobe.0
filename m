Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD21A23BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838D6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670846487;
	bh=6Tq2Vur+KII+XEvtTSM2iAsBSvJpZhSIc3UMsasEsw4=;
	h=To:Subject:From:Date:From;
	b=dhL8dT9VXauq4HGLk2H882EjBflhX6CsHAoB2Jyna00n5Gu8NtSEDQwLnLAdOmyC+
	 GRF0rI7M0SY75yogbSOHeB7VmPmHZxov/O2nrt32SSAp2HSppETrLT9AJaXfFg27sJ
	 bw1DFIoyQXqEioPmul+dGHpuNglur3eFCnK00nCDyO1kslI9GpnQsC2PZWTB4wf0D2
	 Jg35h2CL/gg+9vrX7XhkxxgM8cduwEy+AbLD2ziSywccz0BXFy65sSmtfWg76W62nX
	 6h8WAMOJpjQG09W/9jA8UsCCCVmEInhY2Q+btKB2R9hDOZNikPXIbGGEEuw1YC/t1u
	 A0Gnej5tKnTcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688A1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084648741.13911.7467668595178275993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a464d73f5bdcab55a08c8fc9652522793950454fe718eb7925c3f9af325ff4
Date: Mon, 12 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670846487
