Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B805684
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82403C433B5
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670361654;
	bh=DoolhO2+4UJrl/Od3bRTQwnu2dl/5EDaQxwtVgjWeKY=;
	h=To:Subject:From:Date:From;
	b=b60M/7Kgs1c8cYK4IU7/dTc4KUKBAPf6W0jZMq+p0Ud8CmEIq6J2IRkRT5TAirHyq
	 v+G04gUvo192z2tyb4q79Gc49ddeABwHt3NkBRyYsHDd3X9DAOvX1cyFK5gD41XIpv
	 T4k6mhchkii3CY2Mmnp2M9e45jqVjz5hXRpBOAxVu6HBJOcc+S+rw1zK8QZK49WSoX
	 UTFLzTuV+H0fDqzQ34O34so5RJsOY1ERSZ2YQCkMU6yIEyrmsVbdQCJE0ALvyUzR3a
	 oJdVQxIXtMgG1B5uM+dvEaQCDpQuIVdRKCifujl5VCQXiEyUK+VL7gSK60OUwxOqlk
	 RjhjBrsHhLu0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A31C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036165442.18726.6144953526099764471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18223a46f503041d85683c60b566353de045be8c9a41aa7530ed0a7b91bba7f6
Date: Tue, 06 Dec 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670361654
