Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C349346B2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FF4C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661637652;
	bh=BcUL61tAlMBGHIkNI7LWf03w3qpnP/dbLmRw+hJmuVQ=;
	h=To:Subject:From:Date:From;
	b=uVC3zeUnsOR9asDssT02ij3JJLXl9IGKN7KqvYjAksS8LG3RRxT9nbt/S8+CrRcgb
	 hpzPwcAPu+Rp/7szotB45Swecjk4hH+2w87Q7+qBCJm7LIForqcc9J8PLA1rov/4vh
	 aRsZp/HEXiEDRtzsvJJyGtMC2zIR4Omi9dP8m5WbQF0k5L39Yj3rzLGGdMS7G8lSep
	 Be1eYanYN7wAcigKyrOSf+L3kQRTgcaUj9qNPH6laBYXH+Hz1LuUx4vIIyH7Slt6hw
	 QnMCTxelRU0kuplNikRyCdo78+BTdYuDAxHaRq8D3zmHQCDfqiEx9cZFwrOJOhyMz2
	 bptnZ51hHiK6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2ACECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163765232.19574.11692305930045931467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c33f582c78abe53d4ca9eb02d1606abd900be868e8ba26e758e439555fcbd2
Date: Sat, 27 Aug 2022 22:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661637652
