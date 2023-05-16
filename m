Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EF223A8
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D08C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684203665;
	bh=OErgtAMSefDbCaXOiBLERUnqJRTGq4607inj2MSt748=;
	h=To:Subject:From:Date:From;
	b=SjIyvA4rrGc3n52oCNGMRmG07oXlJA3Ph82eGVcwiaCwkt774dI9O8NwOzBmGlF6K
	 9EMqlxiBEsNlmCA8d+n5r8IfiYVexAMje9STiV2qgoWKXaN2T64oo5zjYtqVDGUBIY
	 dvZ/ewgu0FIzHRnS+D4PNjdXWmnMcw7BkSBALTpZJ08JHDIUclLPKZVDex3BAmZE0Q
	 fALvaFVVeBNI7JBePaWZrQ/BPFutQFqNWx8lJoUPKvVvfzlWvd4LMPa67QqGygnFry
	 YxGHdWfbWzfgo3l3p4HMz+putJSR9tJbPLI8Qs2B/11GaCnQGc710Gp75T2ymkSKZw
	 1Tw+a1qvYVTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C45C7EE22
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168420366580.29486.8201956260257867753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c463bebaf84d45d2d85986703a868d1bf0eea4f06b38995fe95fc01ba3845610
Date: Tue, 16 May 2023 02:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684203665
