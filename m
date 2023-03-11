Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424047E5
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 23:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E83C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 23:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678575966;
	bh=AFlJbJbVufxdXSoEO20qXegADZZy7SbULuzhH6ugx0A=;
	h=To:Subject:From:Date:From;
	b=OY745XT7tvZ0GE9OtHI5ol8UAXYLX6znK+hFkz37uv4sD6JbnYnTj9hNAV2J2ZKg6
	 MLRqBRCPMyYkOiQjJIFZqDIYL5ftZS4y3JYfCvpjSXsTBZPCiO8+qSeVX9GO50OlAS
	 ZyPZ1diPYHEHAtCwRSBGnpSM4oy+7VMfEmZfSZaZ4hNF4ZSnMyA2SbMsPtT8chxIHC
	 gPcBPEUyOnGJclfgmy7TsWjb1VPER7qTRfVsNYsDNChh4QIjC7oYt7MXUkafbIBXR4
	 OKwmUI9tLlQr5lHSFc18SSICs5739zJjEzu6QUHAEGFjQOFJPbERTHBhxFVjqPsshZ
	 ni/pbmsYohxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BC3C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 23:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167857596580.11377.8484839347645678383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e6d305819d006900ba8274580257317cee9a3527b02ff81a6692da4bd58f95
Date: Sat, 11 Mar 2023 23:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678575965
