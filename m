Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0423F2917
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 18:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3F7C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 18:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695927368;
	bh=OcxexBs7N54jvG46GTPrFPiU1jMN4Oe9AEPzgc8gdB0=;
	h=To:Subject:From:Date:From;
	b=tusoHIEIlnTk1u+a8el9jUv76QxDLAIfcetv/MkMFFDzE74u5vwwhnz38D5uuUAI2
	 A/spHliFbMWrTzVK5hzcQx2VZlg9SFrZb0qmFrzXL1CCIm3k1QOA4cSXFlEbETAY3k
	 MCaffb02A28Mtna69v3r1C8FzH//oTOKSujVQm8veXuuEfr6Cn9ELbbt8F+n7xDGXh
	 34+Fg+2/ESDjhQJIYZwelAJcNtwqlK7KWQKb9iOu/yKd4HfgI4RGVF7l1xy1Z25Yie
	 3iC1PHNisVZQd4WcQvHBnB98rAQCZnUKXHwxRqg71MRIzaGIcSBH98Gejv4UCTfX5E
	 xOu9iYg4v+H6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8866E732C9
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 18:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169592736866.4868.7998281903924406543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2678a3a65918bb741b0f7cd7d697d6f8e9fbc04fb65e5fe6a0cae0e26679af
Date: Thu, 28 Sep 2023 18:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695927368
