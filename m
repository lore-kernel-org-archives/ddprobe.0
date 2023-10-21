Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A1BD30D
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX0bm7G7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC9EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697894296;
	bh=Eh4fCFYh1gFftMAxFOaYWzD11q4DLy4FWiYCreIPbaY=;
	h=To:Subject:From:Date:From;
	b=BX0bm7G7rNDzad3ru0NErXDcjebpyQTfgLKeBULjc+Z6c8By5Tm1cYPHN0ry4ta16
	 ho+TvEZ3TgWOiR71KeqbwqkehRksC0bKOO3qPFjcw3iKXojSnG0mfUpgwOSJb9Z8kd
	 O4SOvi8l93qMzQluA8b4YdAzn+4XZELp8C2UQ907/5XzOiEsq930UiiObg113Kmhu8
	 OPCno0u2GdIfmV/59xCL4pEoARbEr3aPL9YzgQt5zWh1oteEoz8r4Bf8i0NBHGpkFI
	 4prbUrt3nRWI5eFl8+uWuTXbOI3qtVUpQqvnkf33EBcBckwU7H1U0u/QH+TTX4mRGV
	 zm/hyOGC58aZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF03C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169789429638.1014.9383345698381778867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ceda6044dce64215f14f0e109bca0e6ce72958a8cb936034f586074a867788b
Date: Sat, 21 Oct 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697894296
