Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4AB29A5
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE1AC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673264487;
	bh=E4xCj8uyPv278siG3pYuRIkreLG3wzFbssLE+6xuM9M=;
	h=To:Subject:From:Date:From;
	b=I6Z934fiwqKPQK7QOK2xxwRQWnuXmzoymm30Weo/xzx/SF24vvCpcLkrCx0Ykq+Fq
	 oedFUoAzs8TY0EQgvxS7ELNEaS+sEMk/NoCM3zpOLrJdANnsGPDsXgE0t4oCwFP8JE
	 hM32ImyzOBrKwzHct1tRJ1UUq5F4eenDrgns+G9QzahMwqoDn2mIj/S0GiBvnfxS0/
	 nhYjEKhz981RXNF+VFEtvtBpPcnFtbNy6pfgUeFzEck+5z+GlUU0VOhco2bRbRWqs2
	 z44T/tQWV3qkol7aphm7M0dAoucP8p2LjV5nRUCCUgI52NLFj5zgm1GsG/daimHxTI
	 Wx35sleQ393ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66FBAC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326448741.7469.6218337140992287690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d55671cdc4dd8ac421e14d95859b2e2076c720f32f00cb541046be7738d7ede
Date: Mon, 09 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673264487
