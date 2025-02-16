Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32677185B67
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739708935; cv=none; b=txr2CerQjoR6S36/RhE8uZgM9CMuuGQmz1nK9hMc7bqLzHnadpwSLuJTlrhA+1CT4+6CnBcFiKvy++C8TBAVQ00HTVRAI2IGMSKKdRGiT7m/cJj5om2zomHKwiI3jYRqhai3DmRMimrc3jO+D/tj+5i+Am3IOwi2sCTGKgE9H+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739708935; c=relaxed/simple;
	bh=Ljux0yN2XJB3PcYVW2bgJ51KlmMiQVSCTBNqhZlZTOo=;
	h=To:Subject:From:Message-Id:Date; b=ud3uE/ydF29kDKq1VWoeyR+25OacNJH/YIltq84epkwISWPaPem9YBhc+5gVMuGjYr9RY/sTLEpY2Jhpb+UbqND9/d6/CVNPTOn7kq6fzEQi8ddanUT2xmGRCbBWsd+Gh36WEQqbpQrAsBS4NeIDp4SFLaaOPDIYi0nhe0XNLtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nA3v7/vQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nA3v7/vQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4539C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739708933;
	bh=Ljux0yN2XJB3PcYVW2bgJ51KlmMiQVSCTBNqhZlZTOo=;
	h=To:Subject:From:Date:From;
	b=nA3v7/vQ4tnwh2VnPTeIFRmSte9fQxuK6TMIzuG8uWkVXEYVlSyb1KP1CrNmpiaWL
	 teEZDU1DLrUUeGjXk9nnoJcBEPN29oUB6TlZZdncW3sim3guvMErYQLqJxgeZisY1q
	 JKEkFXQCrguQ+AyZBj4+IbcE4Uxj6BzNQLEP9Mamk9TF4IvcOHPRumc/ceum788dr4
	 EAJ92NlbjQI/uNuu05zJy91eng/iM2i/RNyNlpXWIgiykgIz7QlF4M5LQCXw6NmKiV
	 x34oXwxtxsldwS7KV3oHyja13yI5TQtzCCLLLtvXGEu89TCL4s0kEXvSQ9Pn2wIH1r
	 k0JY+k6IIZLmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F129C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173970893357.30141.4553321434612258201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a354f7cddf760b89cb58d257cda10d0c533a205a8f09542022b745616e6cfa1e
Date: Sun, 16 Feb 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739708933
