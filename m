Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0301C27
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 05:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4115C433EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 05:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680325985;
	bh=BwHEUfplkupJU6myF3k0rghl7Sfi6hckku5l1waHSM4=;
	h=To:Subject:From:Date:From;
	b=Tep9S1/gRxVIU1g+18q8AsUfi/mUueLuON/GOTzxEm6Fzf1CqyI70GDxDMoEvJE87
	 x4H9Qu9mez1ddsbZZ/vuXE5tbjdmrr9kLee9Zwo7fkILcO9MRUhILDc1j/DN34slQZ
	 QDwrEiTzP47217Y9QVGVhKku2RRyV2j08hoRG+oecwA9Cifw3cdfEVOmX1vVpqAM0b
	 p4T3ePijy1sJEHq+uZ4ThYHpyXe+8274zlmuWiRI46k76eofwr8j03K5UltBwgZ3Li
	 nrHhHJzssZ2D3jHI8Zx97zuPphpdh4sQJX7Weec36WVaF22rNKx3i3VfVzL44/axhe
	 JSc/wM+3DbTkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CD2C6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 05:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168032598578.1695.4784634979116692748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56706975bcceec04185fa715a39b13281423e227f2f51cff19050848c4fd854e
Date: Sat, 01 Apr 2023 05:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680325985
