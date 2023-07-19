Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A741BB27
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D45C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689809528;
	bh=5k9UTplImZNp3y4FEI6vYzb2JN2S5Bv2XSyW8a9qTdQ=;
	h=To:Subject:From:Date:From;
	b=vIxB6+8DOw0A4+qYJKD5wVBiVcn8fH7PQOSZTCJHTaC96YRDw8DeAcdk6VrTptkl5
	 2+PBKPY3KcAC3QsWaBn3EONhuikL6wbYaYYNJ2M5NpPLKl76MKjGPvvEQOh2huiHoz
	 DjdH6exEY8In3m1kgLu9zTytWq1OWSQQhom/VzG2dyWgqIWL1Frg+pC9LX4AeSmXmO
	 i9EFKdGgYE0zzwbek2FsGXQq9k4rvAEGodJ7O9UsD6uMW3/ahqppa4vtq0LSSo3gVG
	 mXEdXhts7P777ZdF6MJ2omx6jxIH1XH8nycX61nQeC0Iseq8drK5Vh2vFt0qrdU2mZ
	 2kr4d131oHA5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB73C001B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168980952869.32630.15694273733938585068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d076773ea802833738ef2e3e1b8c3f7ee9326ed1c09dae83ba505d24c66b657a
Date: Wed, 19 Jul 2023 23:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689809528
