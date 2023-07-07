Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D80C1852
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06C09C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688710029;
	bh=JCDS3+E43L8J76HiacYfR1J76AMkxgdIoNNe+s8p3zA=;
	h=To:Subject:From:Date:From;
	b=NhZV7qL27XkRPcHYHDOOGctFZr3X57G7d6yEo2KCWbqGevUo+eaYl6vjPUtF5aJ6j
	 pNjBJez3XNQYjJ7fmWzMtuSQJ8q4qQ3V1rHLD/WwvwlnOFxKBZzrcHPJOvnsJSYCFW
	 12EQGvTfmtbjuClDvvWLU1/2xi7hGQ2+lyRCfpprtyx82p72HYArU8t4rChlaUUcy/
	 Zs/wTkV1gOX9k/OS68icJgWCjVC6Y+e9f1bZXz6pgC1Nbzf4sjltdSjDpAIACPxlva
	 eISfv8swZAdM6qbWF6kzvyUaptWXYbCfhAWydGuIPXZEBC+JRZ4tthEB4uyj2ze43B
	 uZbAS+C+N5i0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7E1BEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 06:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168871002887.29963.14833253248913782528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104214e59bf159a5e9bb96fb1af86d8ced706a513ad1025f52072e3f7ae9a2e4
Date: Fri, 07 Jul 2023 06:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688710028
