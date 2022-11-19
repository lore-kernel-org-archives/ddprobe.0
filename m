Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BB836C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C3DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668827454;
	bh=hJl+Lvc6YWCH+PPIxkAyabVFmRzWB+3h3YclSwCj0OA=;
	h=To:Subject:From:Date:From;
	b=FFFIhtyuvJtsAGV79X8fbHr8gL0Jm12vjBByHBZ+DLWuZLQtmxC0A1bAWvOw2xCzR
	 bb9OjM2Z2FXWKFwGN9cLrnxPw1zVjBotQjXPabFTfd1Gnk9PNrlio9X7CPUKJRuIYz
	 PZ3KDk3gOKoE9W9g+sHyiV68LZ0h3inhuzLCerhFXkhrMVEkxtc3eRKVEPAYdoIa/0
	 RVUgEulLi0ljZ/ZWeW2z3Ni47B6XNCrWipGdPMxt0i+EGcRn3jfu1xC+cAma3Xr0vg
	 MW69JSz/NNJQsiZS7ejj4mQ5lZ9bmwIbsbcGEopZmi55jCFcZJzI+TcvAO1+4eN+AV
	 l1Io1pdQvzH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F0DC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882745434.27554.14816626819062121325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cec479df3e832ae108961e4488b25af608065608e71d4fd68171c7f4ad86552
Date: Sat, 19 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668827454
