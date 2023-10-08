Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618899CA65
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 06:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEUyEBRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50B7C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696747628;
	bh=Cgpec0cCPdF70l3FYkINWkcOtD2YCZJlcpHhrjAqUU8=;
	h=To:Subject:From:Date:From;
	b=CEUyEBRn3eQHTdE1zSoRVgV2AL4ysnhFXmXsGjLJ7iNYAY4dfGB4LK3E5qPZJWSQ/
	 STkRtLWiBA5u+dQvM2GluoxUfp5a3/80rPQS3fK5ieSxD0nzmhgv476npgRF+9mOPE
	 cBDugalZGsLsNgzIN0cwJg6t9b9WmZ1QroMD3nSnHRWQVG73pgfTj9KCEUsLnDVxq3
	 B7Fwsob1xlOku+ros31zzLG9aTh1ZIxl1S+nC/yJ2q5NY7Zm+lUNHw/D+OfpkKHlIb
	 V6GkKEQ7wBqUunx4zZY8rkQ/DAVPLt8GGDxjs1hGpokrRDh2KimKnz3ZgPook6/tDC
	 tsydMgXnjlO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D0E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169674762867.32595.2693005243616805698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a60d648058d692bc7a489c2f040ade961c104c94ebd42226b875c05fef5c84
Date: Sun, 08 Oct 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696747628
