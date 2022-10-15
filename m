Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79C27ED
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67864C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665824453;
	bh=Pan1mqAQoCXTwWxwu9zEw42QkKYZGoWPAcc1wzs/Aj4=;
	h=To:Subject:From:Date:From;
	b=Wfkv3249REScTNt5s8MromiKZJ+bRy12gjrz4Gv8RGEg9tgU2u/Z7xOPwIwJqmT5Y
	 J2z1P+gBI6Ojk2/f8S9Cz8LnZ562qlROCHTPbCZlewcg1WvMGAgP3P+kYg+ZW7VWYq
	 fDN3+qgXSutcCyNG0M5uYIAAW7fdKyYQ150yY4/XZfAyqlH+1sAMY8RZ1FZr2KbBSx
	 j02nykwLIcxseRYqZgwqR1JmbLb9tNhub/69FKB5oXvIDkDwG6JsQuvlNcdIohwAV6
	 EM5Cx29kTRLT4HhTMdUawm8vHVF13kx334Cfto+kwqvmvARqKgN/YyjWDX0pPzR8Mn
	 YDXd3Kw2vfG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFDFC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582445331.8444.17659056095285995561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777d9e3f1e01fcd6fec1fa4ba3e9d7cc0204dcf115942bac39903707f2544021
Date: Sat, 15 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665824453
