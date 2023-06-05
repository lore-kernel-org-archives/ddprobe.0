Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56362BE59
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 21:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D447CC433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 21:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686000665;
	bh=w5s9Z5oYeOl5q2LMk7kCrDZCx9tKXkvJFgASnxkTPF0=;
	h=To:Subject:From:Date:From;
	b=dU/PrBFI9wtpn2S2z6omSn+9Fb/v+avHxBgCKzrPe2f2KG2kO7BrAJbEskcJpMtTj
	 lvUvlX04ELzzcnUf5VhVNtD2jQh0dyDw2MCwOU5R2P4rApDHKVe4QebB6CkTKluCNc
	 Nnlw/popcsEiWH1ATykr/ryRW/Wo/Bxc6rldxEtaHbdCIHzAjvNoHUtUkXtHnv96uG
	 7nEnwBnNzrKpcceOokduTrESmIj1QKM6hju7bTD7efukJjXDRNEvH1RaKy/20AM7DX
	 OkdDbY1wnT5bD5CmfG/PFSZ7kG0pZZeo62kbdRnV7qP7hJDzVRi4irgGnJG+w5hz9I
	 emWN+zkIVlgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9327C77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 21:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168600066575.304.8384122894749820265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0effd894089cab49ee4d11513165d33452eb7799a233ae0e550d96949434a17d
Date: Mon, 05 Jun 2023 21:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686000665
