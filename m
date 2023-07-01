Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F3F15A5
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90BBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688170988;
	bh=Cfpnaznb5zQ7H4zcRiyYBaH2u77zcFMBC69nILLxebY=;
	h=To:Subject:From:Date:From;
	b=VXykTdFqTK6AyDWF83IRB+D8cGeRmgA13y+JS0BYxPpy3avxCtkxWJT0J0f2wOv1U
	 2pyB5a5ELN0s6ZYfqhHFFn9DlmzZx/cLa9X80A+MIAwCZz825whV191xokesz5LOUL
	 5f1czvnih9++oHt8DvPxx6uIdfItKGW5/GwswXtH6sIR6udux+i0vzERM9b8toPK++
	 M6b6+wzSl5Dug9nOgKay1IZO4gmbFMoNWbfUpYEN2AnAVt8gpe/Z5DWPWCA0prglJ4
	 KgVP9WRbjq8CxsOCpdMBstTNFnp+SK1tnL4RDA/GFI4sA+sBpZ8vCyY6hSlxBsqTVj
	 +4RoW1hyha2Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E50EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168817098870.11530.10717316529802268058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b9daf9ccc18d2d421bb2fab4951755a242332945fdb032632cc3fc80dce670
Date: Sat, 01 Jul 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688170988
