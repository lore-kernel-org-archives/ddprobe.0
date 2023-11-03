Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E0B15480
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTWuR8F/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6ADC433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699009696;
	bh=4G/JlARziW7o8xhP9z1pmb8DKqot2ojyaIfJAMydKGo=;
	h=To:Subject:From:Date:From;
	b=lTWuR8F/1sXmxWsuINdQjJexG3uXMqsueFxq6VGpoJhgGDZt4jYouBjqUKlMgKdD4
	 JFJa/t/kpEFiN7ax6VR8pKPg0oCyNE+XOSa43TfaulO48eKGG1a6s+rCdlrlMcfLB+
	 Gk6knPuPgy5qP4GjGmoEIMdEfWEVfTsmbDVUSG5LwMVRCnDamjBK4riGinwfqYT7wq
	 Gy6ijcdJZuEmG4w5N5+2Egxa/cdAshTG53owJ1fAiDiBLXJeg+ZhATNACWGnVPQU61
	 jCqJTBTmR6l8+wvrHcJSQkI1jkWCP3pTmI3VqJzOaiKhx14sRQJ44z3bDE52TP06HP
	 SGPT/0PvCxBRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E099C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169900969637.22240.668264268905358115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d6dc9d1fd3bbe89ede30d5a5a37ad342356af1b58607178d5cfe1db6ff5879
Date: Fri, 03 Nov 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699009696
