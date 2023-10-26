Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ABD2D7B4
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuwR0dR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8681AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698323296;
	bh=ZyQKtR9bZz/sNogF+FTB/VQv1TRane8Zp3MJict95Uo=;
	h=To:Subject:From:Date:From;
	b=nuwR0dR4QUz26eqOfiUJBSLHMuiIYQHuCv7FCsgyEupo0gZtvJJUt4q1DaEqCS/Gq
	 PdM5Z5CPvt5Hd6UHM9XGWcVbz1p+eUVvvQPDzi1XfdfG5s/Bo8n8Zr62uBpfgp31m7
	 uHUobd4KBajO0o6+rZlKFJ0eysMoSssECwQboKTOqXGxDtj9u/H3b0tqqELP891h/2
	 7cNXIJvDHYk6a56ibAowOjj4QK7R+nx3vNKfyR8AJhBNkgmuypHAsIXrCaaJQWbIgV
	 5TDpNALqU59IrxWJgtfBQ+4tsbie4GCkZLoSrnOuE0pftxlrOlxjpYoIL/wLcnS99F
	 PleG3aM7N2bvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685A4C25B48
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169832329641.28998.722618167869083239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ff6ee3d33cac2394263319db30a4023135d406723e6eb5e150f5115e105367
Date: Thu, 26 Oct 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698323296
