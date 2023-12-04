Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D352DF83
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsmrvEkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC05C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701707296;
	bh=OoQC7S4k8HzMtp7XMbDP048ZI0ffHyhFAyJdz/yTtQc=;
	h=To:Subject:From:Date:From;
	b=rsmrvEkNbJXpBTErTfssqEqnkTINpdd5FvRkrrSaMKwr08IM8/JuLJdexAYbk+nKe
	 kw1UusjXQTSJBKfPgusHyssoh5yxPX7aIxMctFynHOmeMu25H9s2rZHIogGzABjJPZ
	 ZGwBjiap/Fu4DlOv18V7RDzQIO0T8oO/LDRmmOrhN2WzDFl1VzfG/7q1icnzzJNusM
	 H995dPLWNqSoe8VJBYFZEnnb7/7WudFyt8SIu7HsQueytscSO3MuHsn2Fhgm6mchD4
	 aY2WEOt5HHsD9XYalIdj5OEMbPDgEO9Z+OX1uN4PgjY7yN7NAUYNV1274ayTIljkK4
	 IYcD6BfY1DTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62560C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170170729639.3795.14952506555575822166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a007e62620ace0ef3c9a4b1bc33476b0d99eec2553d940a40aaedb94696fb20
Date: Mon, 04 Dec 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701707296
