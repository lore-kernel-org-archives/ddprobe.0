Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599D2EDC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE87FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690576928;
	bh=tpbDgIzF9Xp/bVQK82MYX60kRTmgVGRL5Z6wjIsJDlg=;
	h=To:Subject:From:Date:From;
	b=PkHXp/U2alrTIIyqMp2Fw3C7fHG42FnAOxCgXm4ANemGXpyEuAIuEzFq9C0l7JyIX
	 0AC1Y2pHJvRnnW9syZT7EKBPLndKPyoPssNMt+O26ON7n5FPvMTz060Iek6cWP+9OI
	 YRkNDA2HW1ki+cuAUJ2fz567QtiiN4cz493CYXOnSWjgv/ayniaNHF7tKp7vLHqxKn
	 2E96SAprgzeA1Fuq1Bmo4VWdI212kjzwVnt3IaXbY2yYOCEeBAw7V6lV2wDcJeZil2
	 JkPmFPszfnRROxbULs8BTyneZpWuFWn1HgFzHbs6Te6O4J8KI8KbK0lJAgwXpakXoV
	 JjiB+3AvePz7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3092C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169057692878.13661.12670832353642730921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf220b3a7866cfb84d1d9af808fda78d0781f2546b9edf0fb61219631b48fd20
Date: Fri, 28 Jul 2023 20:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690576928
