Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698C8522E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C32C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688106788;
	bh=Lh71pdZQROqX4Rv99GlfPEhOu2yqCz3DLlBgZIgXDBA=;
	h=To:Subject:From:Date:From;
	b=IYMoOTuppc9o10FfiGg3tKyCCKwPAFBLfYTSt/d1vDu418zK2ecSfN4irKyjdYVrC
	 4Putwmi0YKqWj7u/+UqMvhzDRLEdIeZXmQWAGSuM4r+m73WK2HAdrkuNg2E+O8i2dB
	 qXIXyb6gpayM4QOer16Gfb9pLX5fEqWJU8dq/DSpfieYfj5xZ5lriUaXTT8xTglU9u
	 h8pdDSADIzLU8fryqhQ+og97zZ1LI+tDoOUJp6BlYZOCWq0XNjOWK2ddYOdb6rrgeP
	 EnT8oTsRdHfp41d3jjm+6jcl4ZH0CF5rFjLpmm+zKF9IY4Lbg9ybndxYKjSyYbFmP5
	 IYYiDT0xb+2Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9FEEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810678876.22012.8423651219432418865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fcaf423f551ec7a4b16a3b235400380a26a7dc1bcffc487564a6080e7047262
Date: Fri, 30 Jun 2023 06:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688106788
