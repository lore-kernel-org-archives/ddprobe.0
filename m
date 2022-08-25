Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5841113
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694B3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661416852;
	bh=MfpD1wdjAczrByjPvioXfiUPAuEVJ3vEUbdBFccYjDE=;
	h=To:Subject:From:Date:From;
	b=AA+N3Av1YVplGSJHMAw09FIvuw7EX+p2YkBqdCoSgmK0yefWd8z02O03dorJ2xP8W
	 VaRwKcga29n86crtJs/kRmq8qYbExu9R+zY1+EcXDlHFv2W+DJ2Dzn/z6PuXCAjfd6
	 zUQ2WE075Orr16nNk0rpeivOLzz9H8VUEvcCZcf2sRCvKrMsrmRlypC4Ie0mRx98dU
	 f5zQi1AARCdi9929nSTsT7W1YI/oTkzPijeTFjpAxgZrQqbOz251c2w7O9dSapMdKq
	 CYGjHdsMhFoJu3mk3hjLoQdPS2MNIDRE0+XNqXQTihYA323Snbn30mgkg1l+86X7x4
	 8k+XCv1VfqYfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523C3C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141685232.22578.6842953750084943467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffe5b6a4d384934889ceb1477770b1de6afd8d5cd104d296c503db39626a049
Date: Thu, 25 Aug 2022 08:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661416852
