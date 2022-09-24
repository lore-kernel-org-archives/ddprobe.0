Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62653C1C
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A5AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664061053;
	bh=QduwjA7zJnxQQCI9XZDSq5WrpuWa/9zc19IENtMPdYg=;
	h=To:Subject:From:Date:From;
	b=MGxnaSj1j37G/qVZ/vHEeRaPMCN8XHsy+K3L7hcQ18rOgD7BRc0DZTfNFaDQX160g
	 zvPFFktFhwUBTPCdodH6ZEXIVP2Ya7XkuGhaV2W1Oni5Q85WO+yCUWRLi8SfrSlydz
	 ZjBbSslyusXtvgEG2OTfooGqQYQEqXYNuMefvxxGd7eFRuGqOcVVaY+425lYImElR/
	 sIYHMmsYG12L/B3ijYREaYFPRQlwy8h8/wIKP4SuvWhFDyM6yuZvAqJ1856CqOu4zx
	 I3pBWhWzZb0x5u7adQXU03JDOy3m9JbRXoauHJvKhpF+JJEsRxvYu4fe30rrzzX+m8
	 CLdWT7ndEktlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5129AC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166406105331.19141.13710616704172313820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdffa85b6a7260c2d95a73fb0c1fc7bc6d8a43a3b2b0dc912fe40419022301e9
Date: Sat, 24 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664061053
