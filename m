Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA4114A82
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08D02C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687815189;
	bh=LKC7IMCpMFDKzFmNulw1s1j27Ajd4SulmgHHq1AdaLI=;
	h=To:Subject:From:Date:From;
	b=KhG1WB8PJKWMqOhliZJ/7w7I72l3Cw2RhtJgdQAgVCxFg/7a8qWCMk18L54/zYvH6
	 V69Q3yZPOMtqs7NyL3GQxcIBtKQMUUrac4zxMvwH3CNh+6l8d958WuTzDGoNjKbxwm
	 j6zg4p5W9j9EmlwPlQwqeIPxOHl7pXT/IozW4vzS+ZF+8JqdvOhsXA7DfM02N4Qqku
	 TP3MHpV5A1m8vuYpjZJtoFQbNVsclDrqghqCiFhAOvW6F5aK0OGA6900YEaGDVMflS
	 G5+ZZakw2xNHFNSjy+vy3Xy8HB85k8sHwAK6COMeHZVXmaJ9sx32/wmodt4+nsix//
	 rHLt9asJRRM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91F2EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781518880.1615.14761026914152029125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4850e8a79af8880a9774e8ea91c52ae62ad2925451fd8568624bc5491bde4ee
Date: Mon, 26 Jun 2023 21:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687815188
