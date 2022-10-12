Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B588415C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F539C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665546653;
	bh=SEPMTlMyvt46tc4xJVjVIbXx3RRSBuDkgSFIwVNL/ZI=;
	h=To:Subject:From:Date:From;
	b=RhtiTv6h4124ruvVUL++yjDHLLvEQp3wfUcCodYmfw6tSm3h1v2IJ7fm8lyfn1LqX
	 o9D4ZbONr8JHc7+B8xSS5VEVTtjkUjLJUPEasd13YQpqcbe5Sfe5Eec6jcjRW+rtv+
	 oZwkSVm2Ncel9YVtTSxjMq1l4xDeDog46ZCSamnYGyCLmpLTeMSlLvYuXMasuT0+v8
	 pNASm3u/k/kkVmI+NkDS7xTIsfnxm43VpqbfOJJOwmgeuACBCxt2Zs6oLCwHzFU9xw
	 nWY3on8EZ//4HLHM0GHpauzgPLhOEf4P+yPAzKV25oQI8+6+Gf6b8VnpscoJuRgZj9
	 0sNZzjNagml2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5318CC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554665333.2482.16507744164915398927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17978143fcc523661d2688b108d6a140da91cf609092cf913a6609b071cfb80
Date: Wed, 12 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665546653
