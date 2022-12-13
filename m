Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF297475
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD90C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670889687;
	bh=PhhkuyLFaofLaFOfiJo/zCOXqbct79VNSbJW0t8um/c=;
	h=To:Subject:From:Date:From;
	b=UU4ppDhejysZUHm8e6mgOfSujvCWPMDiXOUuPwY9LOcWsOOyeZa3yM+/f0hLAQ2qF
	 o3XHLmQ+FcmBNKGrBMBx3OdbIpv2Gk4ieDHp8YlnqezchnTrw08FFdPLriXS3r/Pok
	 UplGB/U0M/sh9ZWDJ2wMbennfjX2MkIWuvdTYCEZ9pt5XZKczJ2jDyTdX331i6so47
	 Yp2oMFjdvJarVcQ2iacPQUltDQMn++IMd7B5nte9/uehq1llJ+WbifJ+3U2bkyFbYR
	 72pFx3yb/LqZQB4fVkLqBpL8pZ6HiWtnXWEXE1t1Fs66Hbx9LOZ5BvwqqeLRlyJ6+M
	 q+vUoOwRfdE7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E5BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088968739.11562.4439926041632428039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4e7281b9ab2133deddb4849d9b0a8b517f7716cde57656f3d8248ef1647604
Date: Tue, 13 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670889687
