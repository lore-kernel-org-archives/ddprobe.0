Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0EC46BF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 17:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2237C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 17:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674753785;
	bh=E4Y0j8d+LanT/mwhfrTvDI0oQ4MGd1l/M5FsNTgayy0=;
	h=To:Subject:From:Date:From;
	b=BW6m/mX93nCHD1j7UuzzT1KmznKZOEJ5L8aZcf//17u0SqnWAA3nzQ/vlUM0iFUVL
	 a9jfxXai3V7Hh1NER+H4DoGmG/+TbQf4+1P5ukUTx3BStI5L2P3ti6h94meiT2v+3p
	 hQgHxSR3/DgWUyv2OpGlaznY3ae6FmU18K0occ4BZSm8zbUDqeQ5KRK400bVuKyo/o
	 6ZZThNg/7SfGpwQUZW+PduWRnFjO2iFUG2e/x8QBGAmCSNRXIJxPG64Ge1OjsZTPlg
	 q2fCFsDJ6/H/WhUpD/p3hOuQQ8P0meCAjUKCUgywoRkGOEEK7C7z4LPpyMr3w+4ftl
	 0bgK8e8BMN5yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51EFC52D11
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 17:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167475378579.10830.5740360064080363281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f2088aac9b5e0c43ff388e3ba7b9cfde5c62c7d5dd38a2519d63f94d111bd1
Date: Thu, 26 Jan 2023 17:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674753785
