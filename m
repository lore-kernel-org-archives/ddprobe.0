Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB3F4F1F4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkMZrlIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F98C43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704919096;
	bh=do8ZlRrBZ3rHHD4effGBLcwTeoL3ct7Vzu16MS09v3E=;
	h=To:Subject:From:Date:From;
	b=mkMZrlIG/w8cC03/3cPjqlhULYImPBOED4MxTLm51IxEqVcTwCUB7JMITjVFiPx2n
	 F1EIk+4Mi4fzspvjAz1P1x3yc7ixaXZxu/WAWNyFtesRc4mPS1S0Dw5t+MlstO/gnC
	 ZF42qNEZWhJmEDMqtdlpoyo1/YBqZJcfajEkLEBbcFjGH8h2wkJ5b3UdHnrWXvt2oE
	 t6sZLdJCUvyXi6PvlUUUJM30UIXvoPP2pdVz58Uw3dl60u0o+Ja/LrC7TAX3QAotWx
	 9UvmK9rAjt32OvNiO2PAQppJ5u8s6V9e5jjEyUxJtNlWE5TS321Vbp1fSTqj9SlRfW
	 NHH29jBF9Mhpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A527C4707B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170491909642.21645.1375514233883180371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b05eeb06cee826a965dd029025fc351ddee7f53ca0a5609afa35144dccea4f
Date: Wed, 10 Jan 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704919096
