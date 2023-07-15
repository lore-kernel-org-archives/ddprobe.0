Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5268F1C32
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 12:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5640C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 12:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689422468;
	bh=pckkAvH14iJjpywy7ISBj8dT8C7FEyzG27nL2wE/FE0=;
	h=To:Subject:From:Date:From;
	b=rZFN6X3kyxBDU+2wauAyyd10XTgbLK3vwf8o+s2VtbUiqUlk0iOUf5SLTHCUmI/E/
	 LINDzwL2VHtAIwSwevesLoW2fDcM59wO4f7UwNuHO40h17sF+GlbLMTOOhdtOr/N/W
	 6m+mFUjAtYujW3MG5hsrkTAKb3k9SblU06hnpUKN9zUMSH5UbC+sxTK0pWoi+k1OxV
	 btP21IW2kXBargcfAc31rzqDNIfUqQLgxCP4cmEUTwOE9hTRDa2Sp2QxoksjRHKfjH
	 hQ82cjU3r9tTM0uZi53KB2IjXoy/eogavI1nWd0a9FV0vppWCu1h7y2PHyDFqsffR0
	 JGkkSnXgllGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93E5EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 12:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168942246868.26544.9241043575367154258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd236add3c6ca5d6b33dc39c49963c06d7dd7a5561a4f5e554a5c5f64bf6812
Date: Sat, 15 Jul 2023 12:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689422468
