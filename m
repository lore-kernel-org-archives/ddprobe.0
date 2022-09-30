Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C585A7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E661C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664559653;
	bh=ue+5gKEsYltygGaiWGXM3rJShLJOA4Lv+pytVU00FHA=;
	h=To:Subject:From:Date:From;
	b=q/VRYwYQ9nAcZ6GBh5J8DFdML9dAHoquAGnennOMd5UsiWknsWPgRptBk6JWFvKr1
	 UjBhPJrYmnXWxroJejTAW8MkF3T9QOsHrI3aKnpCs1DuXM+bKck/DfDFr9M2fb4cSW
	 S/XAsFwn6lPMIW0tiYcq21pT8J/LWwGApnJCC8d7DXpOj2X3l03AJ1hUWOvKBYcX9S
	 jZKuroC6hsvKuJFjlZMogq+KEC1pjfcAMmN2j/JbPRzxsnh1O51gjrCqitHL1XLywi
	 bXb/UE4hF7JA7AjeIrZksv1604nLCrdhALmV3Mn7Dq6dwROD76JxHU5JSM0X8ro/a+
	 Be2frsLz6oazA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC7BC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455965331.6328.7219356046745597260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a64e3fee7c21cf002f46c6a637cdfb6ef27c0010c8fccb972f080c6c6ea2885
Date: Fri, 30 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664559653
