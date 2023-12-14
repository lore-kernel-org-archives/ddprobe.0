Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478756A021
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMJa1QVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81416C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702582696;
	bh=V44D+QLbxYf6OtxP4Xrs4T5IW6un+lcnmOrJacbE1Aw=;
	h=To:Subject:From:Date:From;
	b=JMJa1QVAkus1AhHpw4dJ+E6R1NNWc23A32sLZwruhOUTcg+cc5oWSAXn86kFXRupV
	 hYIO/mvUkkyD1Yo7BcVG0HH5Waaj5UsQKo/Bhk6uoNyt+1ElZ2FgYxQmdQfCefNPEA
	 +uCj36Avq0Pg5X4tF6oyu+HlYIc2AWkOr27zyekCdXATgNsLQAnE283GfKwvAyIYib
	 ayznEuqezHEICOiZ+2egslCVk5Ox5NuZTpRyDgkQ1hnNsbPVbTSRVtImmr7lIEbZ0x
	 iRvtXuw0BxQg2Chvx4IlKEtzjMsr548vDhdsjgoqRDuktzxek1r/VmEjg0ldm2GGCJ
	 aNV/L7TC9dQqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0E9C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170258269643.2881.2138275210664259336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfbe3fdc8b8d1fbb278f8e1cc2bb8b17d98a71c4697275cb772bfdb93fe50a4
Date: Thu, 14 Dec 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702582696
