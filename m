Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6199A461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6B9C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669660854;
	bh=zs3FCDqd6UljcPEZrclLL5qaf/wF8uIYZ/9Dj1wUPAA=;
	h=To:Subject:From:Date:From;
	b=MihcRCt26wmnsjoCj/l6XcH2yYSAQ0mIMhIM5bp2pcvy8MdUtHGBEuqyj7qnDjAzd
	 Am73KMBwMt3MDbH430SIY1D8mCsVD8/YGj0icGvxtX1lVpxknIMT1YkEwigZEo01rE
	 H2HS1EltnSZlOh8UVIpL2FkSAjsMIQEEpMVlvWYkyGuGyGflAJDzlRy9fLrQQb2T9+
	 T5ls6BuzV3YogQ30wi4/Ck4Svbqr8aeKzWZeziRmEd2zRFjSEm2zkLMUYUh0O4Mmjs
	 niituENTltXlT0/A/LMxD0XL2XBlgMNbsKfD8RHZKkgbh0ci2h7SJSEHaZOI26jfzc
	 fB5p8dyMwhWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BC6C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966085432.29445.11026706491324173557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6fecaae1a99ef8181c89ca670a0e02f8b2a751983c054b6d469f848f9d21d5
Date: Mon, 28 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669660854
