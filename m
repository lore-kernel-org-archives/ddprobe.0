Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B7323D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FA1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667053254;
	bh=Wyc2wKZg8taWCBT6uFh1xwg4Ennl2JtH9XtuqgJ4kwU=;
	h=To:Subject:From:Date:From;
	b=brqfnjqpcorcaEkLblq6pc/mp3JIjmhOExU9P/W6juCqi1KYTytx0CXG8XKtY4Wd8
	 O4uaEtCd0DXTd5smTuD/amrQ/Z7VtbDM8EjmvppIcucN01bMVti3PIbR1V1f7PJIqT
	 QhNbU5GwO8CPrBbdTNDb6WKkIyanR0LuQy/ae0WY7qXls/5R+5jZSfcrvWqfa6Ac/w
	 bX44WbNz+KkRgBsD+LdBmoQzyngCvskcsdRuaIwxQ6GLj8a1sU50X5L/J7bqKpUtwL
	 ep9owADBooH5zxQjDUaUqerYToQn3ZW67RdTrS9DnbNR92qXTqHr/niCDNdcUu1YWj
	 JtHx8kBprF4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572A7C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705325434.17760.7454804403908266708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ed4901a151299a06c28c13e9f473a54185ebb5705933a4ea84663bf8293542
Date: Sat, 29 Oct 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667053254
