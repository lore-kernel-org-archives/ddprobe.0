Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B418F78
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 852F1C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667908854;
	bh=A6pjON+Y0dMG43dtZ5q7Aft0e2ab+r2XzB9Qit+ME2A=;
	h=To:Subject:From:Date:From;
	b=ECT6G1fHdqafrtNgCJvxlGt37kG9505aYnEexDPH2X1QjaXtilm4AariPTHQx2o/n
	 8T2LgcaUv0dWVyfNWY5l3L+LerJERCxpyMhYGsh1RO7z02sd6Mqy0gbtgwNUr282RS
	 P/MtR8oXmrIKi0R0PFVZmdIwnIjisHZWFCNydCYZuo9DyGzUELZuvK6kZjmNXYG/ds
	 P85uc6GQFCIF06r515EAC9k1KKU1EDouXe4GXol/T7mfL4JrEoKdD2YyZ3buh2BsvU
	 1EELT/xp7su2zJTtAq91VAohjlTF49SLSljm2vtyzgydPtCqNKuJojKfF9f6tWzBqq
	 D8kcMwR9sntZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6849AC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166790885441.2126.18389685052486560480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858351629e774a04bc7e2682017b9a0a57296953a80cd6ad94f9423e6ac39097
Date: Tue, 08 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667908854
