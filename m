Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A7C652
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF8BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668227454;
	bh=F2dUXEwqh2D6dUE9/F0+HEPDw3AWhrfGcbQTQXpA3Ng=;
	h=To:Subject:From:Date:From;
	b=sv1zHuI8mVamE53jY0Ca4daYBscSEv1W497J2Ob9MnTGFKJMsVbJl4Rpzl4Kc8JOz
	 TAA0QKtfSG2PRnP+BNy9IlDX+9TGObp5zQiOvuWOrPmL9q3zpB47W+3TooVKBn1H7m
	 8fkeS3sNWPxLtmozBdbf2khlodcDps3X8Aw4HFLwoPZLrNvDXq76Uzg7bZEH8m2R5K
	 CTsE9wx4RraWf/P7Qn3ASV1xhNSW53ugcQ6g7GZUDY6jaFi7HP8WQfG8wB18TBHk41
	 RZpB+rTfDRpt9BQNp5oHb/3D39j+D9Z2MuNLOxr5oEXq7q7MOKJHmpD+WdjMy6Nkdn
	 erjxuUJKPx5Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558A3C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822745433.3993.6756396042246602862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae633bdc962659cad0c2601e1bb7dd577561071f12bf75a86d1c96401d2b9cbc
Date: Sat, 12 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668227454
