Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B5D7E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7B1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666318853;
	bh=Z/oZ9NQyAtCJeBIjzBwK9xKlUC7SiWDOEQ8eyP1VR6U=;
	h=To:Subject:From:Date:From;
	b=Bze7BtmP/OwFyFdsbP2uxFgSizt5VIkU6UiQI+qBmCv+d9XL3OBcKSX+tdTLBRVCd
	 SPBahezkxblPT1QzqYlOhGr2wv55DsPQn8olqYQtdK0Dhg2WmXVVjHLtdQaTyBh6xC
	 18i6Aj05eqngvb+v+MWOVe/4ecI9wb5Aa3g/VS+HsPVWb5n+Fu19OrZSIS7Mvjd03m
	 GjLuUIJh1VzF9z2P9Id7+GDiGwO+l0ObYXROdbaGDIfNGVkLYFGMs35843Hfxa8Jhu
	 NCVfc0JG8FKBstUZz+sjfXNTgG1ysSjuVf2w4N2g4lpFa1PzWtEhxFqVKC0yxT1s6h
	 sdocjcMJA4eeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512FAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631885332.28938.16711566731477555478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5304d8b5d425d21f2c00d670508e073d2dc0ca65f5a709658d9504030b355bd
Date: Fri, 21 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666318853
