Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294DF2CA2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B89C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674403925;
	bh=E3sa4lweW9HjwBfnwX9zOzxvM1BxUrYsrnsas4+8P1E=;
	h=To:Subject:From:Date:From;
	b=InvdnTDN1159dt+ZhK1j9kycevCzMAbUAyQyZjrk8l26S2LLwyIUtn3P+eU85SvP2
	 rpd3kV2oTL+x7ixhosZhLomj9/jhRdcyiYwDecYn5Rtm1v5WcJ9UeHWwzg3lOemLfX
	 Er0dr6KfPDDuL9NVTGVleTENcVFmPEAg3nj1Z+drLkzhGQcfwwEk+p2lFjZMNbFDja
	 tJcVdSW+HpQpo28f2ERCLa/J3aVfwsnKIOlU34NqAIJsEnXaOJOjP/ZJH3Z1y8L+V3
	 WdHMd84ZbXKa+CsVvhSrmGHPwUGWkNdzCSynieYt0XKKKJm4N8l9DXxt05QYlKDbcs
	 o0C8EFO9NcCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5FAC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167440392576.10234.3990976145420888560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d9bcd9d8c7a9db34dde0085e8203651add6bd7354d01bfff39e5b6e1d75545
Date: Sun, 22 Jan 2023 16:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674403925
