Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C35014AAA
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 10:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC44FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691059328;
	bh=4HRMCRqlx73DzGlUUo/lietlnh1eQABIRhto1I+lIo8=;
	h=To:Subject:From:Date:From;
	b=Z/fR/hIMBQPEDdTFHQ4XWM1DngosuLVaY8C19jv+d1YyctAfSvhuffmtPgp8SzDRd
	 5Sw4isuNGOiX5VpbMZIA/iS2QBnNjpG0HZvpQt57Vrzk48cSh8jK+L2af2wbsB32fV
	 WdAlInNSjZDDltkWYLoPTxaxH64QhThxVeZvbKM51YciNphfidt4sfmbiASRkICBFy
	 FkTzRMnW7BAvzVcbmtrJnkRzTs7kuDpe56HbZjJdkbtihJNWxAK3PDKBveDmVYtsYC
	 p2Thse36tGYKx76yshJpxGF0yKpsRKdwytVctzaEd9+3vt9orVXEeBSr3gcX61Gdot
	 Jy+jYC6uFxW9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A9C00528
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 10:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169105932869.20966.8779876258080072221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc504631ac25fcc3d24933704a921597d42f843469a8241447fa1f6715cf6f6
Date: Thu, 03 Aug 2023 10:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691059328
