Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21B4182AE
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQF+JRf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B856C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699818496;
	bh=hRl+RvIRmxmL4kPXilIe3YTcktfMD+dGOOjViyj39lY=;
	h=To:Subject:From:Date:From;
	b=TQF+JRf7h5VPVdco4/A6SvgESBryMCoRVckNry5GAxcMJP4WXXOjR7J9xITgAw+gE
	 HHJloHO+HfNp/rh/XQgGe6Q2X7BuEewcaHUeOsqUpVD01ockR/AP04XlWnrpx8Ivbz
	 kXbHymY4iBsURcYx8mp5RTwGm1ZPBz2C2DEclpes7HmlQLKm5WOotqN52aLSZRYOWZ
	 OGzmaDdviauXyXxPktzxAnXLR2FDb63JWgc/2yAdh07Ah7zz7MbIpAUYwfTFvrgHpq
	 SSdCk8f7GXM9ZTEwy50uW4pRp04z6fO0u4Glfe1sALmVe/FWmOB81r/smt5QAU8ELb
	 /oBi3fCTGg2ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DDABC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169981849644.28627.2756406306270918397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbbc7938124c161ca9443de651d21a02637aa6aa5e71e20483af20aedc14066
Date: Sun, 12 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699818496
