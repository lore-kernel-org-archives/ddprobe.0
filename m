Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E1018629
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGo+vR3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C647C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702985896;
	bh=K3rzVPjv+YUe8Q0VIQTs+eIewU4YYdH5JIGiN4oxUc0=;
	h=To:Subject:From:Date:From;
	b=mGo+vR3S8QO70UrcvH4o2N9nZZFax+8cbBwfHkLn2Rbay3YypM/gNo9mup89olZwm
	 0rZvQCeVOBhUuf+v5/anONk6CuFIlYXhZmSUj1DouhOCfWWtFZI/a3AxErMhsTpLw9
	 YL6Pt876jsSbVsTbu30NufG5Jk6Xxq5VnTXch0/I0PCb0WZ8VpW0v3A7+1/Q+DNWUZ
	 a/GGyq2LzLqI3paMMuaVrldHDmH+eOHsOUmffJmjJOUcZOkMCOpKH1oaH73BsBCnar
	 GuKpDdXy2eI5QKFRSroXS+jeCNp7ZvyI9gIcpcKKReDArMKP/C5+D9BjtLnntnV++v
	 dQjxCxj+NPvyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60826C46CCD
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170298589638.20922.7070220532954646900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54fdaaeaa817a6147524068d35e0bea90737058d84d2ddb5f24552bd47c08c1
Date: Tue, 19 Dec 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702985896
