Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2CD625
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0576CC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688357169;
	bh=uzFCvuitNLZzcjLxq0vcWiLLFBSRwjXkjF7l6fN8jKs=;
	h=To:Subject:From:Date:From;
	b=M/Z5/JcZDWozuT21PxH2gNH+ceBPQaOknXrc8qR+/Mr8V8CYlqZ/aREvmE3EUUHel
	 PK7G/r+pfEy2lYuIDz/1G2bVnXX6gR3wtQ6Xg/SJ7N3acGAdqO9y91ESHmL1/czQta
	 DLzXm9Eist8SdICKGWliVOsyDoZpQ7TGdQAv/ZPxl3vunr0672YYJdUaprx9xrUc4i
	 DyhQot55Q4lnByF4Jpu52wHaF9H2JV78FnXr3ZOVzgdjrf6H2QBrSKNjEaGg/xVEz7
	 nv2AbF5COsbouae9CWU/dRgUP/iHUZRQkdLF40u8N0T3JWUWxtEjfNw4s1oug/6Utl
	 1MkcBeTVnfMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB767EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168835716888.14180.1910620299855366604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a085883274bdd02814fbc6a0f6586f36147092693371242542bddd236581e8eb
Date: Mon, 03 Jul 2023 04:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688357168
