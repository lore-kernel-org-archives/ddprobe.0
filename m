Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272297C
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 01:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D522CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 01:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679101325;
	bh=rbetrtn5pgSX4d9uUjOTrlekxDlYyM+UOUt+xqE9PMw=;
	h=To:Subject:From:Date:From;
	b=Q6MVmgTJwqPB5CVVtoDW8EvC1u01/DheNwhOlgtcOmy7SUSFuJGTF5Z6aPuMpiPep
	 AlxU6OlcGQw6TAjM8EIK0YdLVF9zrEHOa+8PATD6Zz5ut/j1r0UmlQ/UwaUL2KwXTu
	 A07Fuc6yZx3eqVER5TqKUHp1bXv3A6higQgeAqyi8W94thZt7wN76yFLUQiEd7fpoK
	 RtBi91UPsEKLi/quc7DRMu0Kv5wS4sh+diRgvhrKFz//QXxQQaE0KrmRcgK9ZJ6VYb
	 b2ueMcmySY0vLny90F2B4QpyY2ieEd6MIkO/9MqZgWzp1Np6/Y/a1i5REgYN1kLbKV
	 5wI+TIFoQcxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA84CC74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 01:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167910132575.18119.16687342982346669304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d790ca10ae1d4e3a942a38f8f88e4f2745ebc02fd48d3eb2c1a3ee08ec5714bb
Date: Sat, 18 Mar 2023 01:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679101325
