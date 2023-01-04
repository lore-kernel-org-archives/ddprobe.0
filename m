Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAF02F49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7483CC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672837287;
	bh=ngjnO7zW2iWsbfOgiL4/xAAnrfkY+7xAoKfuUT29sRE=;
	h=To:Subject:From:Date:From;
	b=UZbBRQf3c85/JKixy7f3U4IAb0RRy3L3HSoVI4mFzfy9C3GB1uV0+7HDd+HU9m49P
	 TgUDZGFJmkuEeMWop6QhBfJhOdgR2ODAPUF7YqHJNIRvTpzOuwyi/yAzmrVhp1Ca38
	 QKDIfNWJBwoVIm1kzviA1t3G9MVxOFRglSlsV7mahZJZaDUJ93hx4dqrBS1Lxi/TYv
	 Rmch+xAzevnEyiGg/XRTm1qwdnuhRzE5/0AQJVOu3XroNtz/pmaKq9z0TXeRcI0LZ/
	 /VTH1xqxNZWBAR+FvJEBZJeao+t+gqTHVGFlQadcBHmjz4vFre8Qq12aYeyhKYDA11
	 1sJdO8X3xuWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8DDC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167283728737.6238.18057327511584665184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd53236299c32974687ba28f79dbbab98b66226e0969b989ac8080223fc95b4
Date: Wed, 04 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672837287
