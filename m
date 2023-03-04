Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D43B1FCF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D594DC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677955025;
	bh=96Pfrdx0+0nLXV1gbU/fcKpAUtX8RZW8i4mZNm/QVkA=;
	h=To:Subject:From:Date:From;
	b=R30EBZq9uatoIRT0g08F5o7XMVXs1rse/xlf19En7WBJ55x323qMajjgWDnz0hdMR
	 K2Q2DDhEIZtoirb8pENndPt4LIKuy+chnX2EASa60YKlTaWJ3psQVaUTYYXJjCYh3I
	 zhU/pgXCt6DGvegZjb0kYRNNfaw+5LgB52eci0I+f+Ojqcn4YoAjUcVtGjzgrfypP4
	 lCrcXZj7smUCOKRoPFuPitB4kcWHvy/z2/Yp4+jfPYPxu9lKcc87JWuSmnzLFVmJps
	 Ygj0Z+a0J5NVYZpIpfwUftyg77aEH42NRDoIzhCuI82r9DRIQP9WwkqmJ9GOxVbmeL
	 kDmKw11xLJpOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9222C64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167795502574.23370.9807783826057738433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7957c57c70ae8de0fa56482eb9753b86fe903365bc919b484168d2ca1ab5d1b
Date: Sat, 04 Mar 2023 18:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677955025
