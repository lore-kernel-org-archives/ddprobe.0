Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E8363A3
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfCoFbE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FACDC433CD
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698867496;
	bh=3vO2Q7kUrObGbYZI035SHHF4shinY/mFjZnUg51cKEQ=;
	h=To:Subject:From:Date:From;
	b=qfCoFbE0NeTVcWiLZDbEFQ3+AGZK1jubD52DAdqsccfLXYMh7qHLXt28ItaVNTky4
	 wNkcHXYJargTVQOR/wOxSa61sujL4oDKUiqiojbLcEsNO1NPCuV6s0jjuwM+dP+uOs
	 +UE6drhPgIFtLDY5YaaiuXRGIkc8U25cPzkmc+Glmdf9jZd4ZBaiWtzdFdhJsD4tvc
	 BIoBWNsj3pEoxCHngSIH/fE7LV1IxT16IKXcHQNIUAvzt9S3zlFjKWWQ1CwYh9noOk
	 QKMtDYGIwvaEPZTLnZfE7w6H5VDpvc31sTiijLaI/g/OwfLjSU2WaygFn2Jx0T6RYk
	 60ej7RH3uSE6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C49FC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169886749649.11190.5082861641643485176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c475de4a0e81cbe3e4644f74ba9e6e9312fdc399029ebe9b2dabc3f697a9ec25
Date: Wed, 01 Nov 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698867496
