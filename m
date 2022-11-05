Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D0C7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B12C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667657454;
	bh=i1MkbIOxSSKw7ibaoGMf6EjhnTwZmtp6SyEI8etaGk0=;
	h=To:Subject:From:Date:From;
	b=bRLBjU1+di5kxy7EiBo/XCVP6Ig+lg2NhadCWQ0Pdj540AiO/LImtOLqfZVuUhvOE
	 9ycrNJCV0XhP2fIhPTZRxKltapu1Q7XJSpZkOyfIncLs1xEdYP+vgTws1vP5flqq1N
	 oXSQFDqSA9bHLAYXgbBaNPJd6OSZrPQHstbLmS329ETaDgYloJqo2RiHYpVzbTnhOa
	 NmS6pjLiZRmC5pCCqzMLEpAJu6Dw7xzQXiZfBrQDm0x7Z/flI5NQPUSjaUf8CVBn9x
	 PdGtCLlD/I+2bUWar9YRpJDufdSXZGNUkoDAB7uTNAg6UfHY3CNhZJqENglOdANESI
	 +DS2gPp2zyYXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53016C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166765745433.4432.8157110408392398119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7292adb4847c0b4171d7f08c3d746f3e4cc28a63543966edf60c9d2d853faa2e
Date: Sat, 05 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667657454
