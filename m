Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36583FC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 752C3C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671400287;
	bh=JfJnfW96FVNNLyWqPfnx20sceoWDD6RhcrVgsFDpjTc=;
	h=To:Subject:From:Date:From;
	b=g/dzMi2UOTqovnAAkILheLIPv24W1p+Vioc21JcgYl4TCHfYAUo1KYeRikPqICQdW
	 dpswcrRoltG57XnW7GZyp2NdHGP4cqEFVGGSduUGQccWiWhO+jxxfPuouI4hb4u8qY
	 zmMOCSUHFlchsdeY6jxPtjsmnIlgrbkAdWhWhg72+Ng89pdG/w0nWIP15hhXQGiKR0
	 hYdYeYewgwvqlvz2iKQUBEofW1nic6Z2Ul/d/Eb5O0ZAbtFMFFA8CxTMZ8gygskit6
	 BIpTixAjLNa4dpBDCG2bRhSVhMBsHr8T5y5n7nVoKuXw26/iYCifnW6IeBTKyFMhA6
	 Y34sh7U9gG6lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D170C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140028737.19779.12499366792306421786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717fcc598162c257efeefbff028e885f0cc035cbe0314a77483f0f6b5fd4c1d6
Date: Sun, 18 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671400287
