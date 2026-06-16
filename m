Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638A030677B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781603194; cv=none; b=If7DR/BRpRMZxOHwDNhBaXMdAQKnJ5nqjRcXkBJGYdJpcjlOE+S5mybE6I/vt1NpgQvKI+ieSReWfx3YjEOZTzGG4LFZv3j+nDMk5lTTaU5f4rHUn9RGcvk4kqt4G64ZkN6whBdJ2Tvht09Xyi6uHp2GnebvyMXbwHj8bcrLFt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781603194; c=relaxed/simple;
	bh=y5aB5eHEOukzBzcCPA1SRqvs9lLwT9hSfCo4lnLJFEQ=;
	h=To:Subject:From:Message-Id:Date; b=ftCYCPfqjiVuaOweDwh47Z22Z2Nzbr5v5A2IEQNsq6KblQMnd3KmfDop2cNDqqSLTbZ7xMzrtfPRUYkCF13lISdEIkI+pJeSifOVAkBpnEzlDJOY+3/TAoN4qXK04DLBOwTZVcFPcgYXggvASA6dWRbGSgiaRF944roEZQAelP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4uEyuJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4uEyuJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE29BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781603194;
	bh=y5aB5eHEOukzBzcCPA1SRqvs9lLwT9hSfCo4lnLJFEQ=;
	h=To:Subject:From:Date:From;
	b=G4uEyuJJvr06OU8aOx/23RGVDFFJvUkFpUbRJDwDZoYc7fyTNIFVdfrxwsPTbZb2m
	 0uM+lxFuh+sLM+a8OB+UalpNBr/BNRCwMgWYS77ltlINX21P1JJB0TXAKodB43tr0j
	 HOMYUaS9+v3e7LxRLCrA8SC+mncrkZhCTNjCIhoJmDRZgaROceWk4wgUsZipPhN681
	 vFojQHuWtZVxXtKezwMpOEk/SnGma1WoSxlkerHhqUG+2+yDb3TTZwZeQCwk4e/jUg
	 7s2ZaAyWCNEYir/xawj0ILpLgqE0JdyU2t3ZlwsocZ8l7Dmh83sYSWPzfrQnG/w5bc
	 CZe47813WEPTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53B3CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160319374.24744.7159512516905078359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5fc7495a8c16333a166a62c5df9368232935415b1806b2ec3fc6e34506743a
Date: Tue, 16 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781603193
