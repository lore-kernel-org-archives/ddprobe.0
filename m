Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A5219BD5
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4073C433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690833128;
	bh=EwBQmgv3Gas3W2Tt+uxjFxXKDsnUj//WSL6h3cwD9OM=;
	h=To:Subject:From:Date:From;
	b=eJllep5dB7QWxzJKmo3NoQdldxdKiqPH3gfpTy8wtH/yqW8lRVTsgvIj3lfaIPFcJ
	 KaaVf8SZYWbk+AAa/oieDwJ78em/1dwieJ1ytBTBnvSb+rTdSUkM38gb1URNSSISM9
	 KnZ1u42VbSWsVzQfhDtohyMsa88NNtmUVcIbuLiM1n6W54yLMQBa31XNhb9iI+sGM/
	 FOijPFgqk7vOVnqWov5YUgGsKoFP1jy2eMA626O23HoaIq/FjrFXt0+UqMq7cexlpq
	 J7Alu7TCvNMziPcMR9TPFY0TzhIQs2TIWBwpcG4SJEEwtNp3qSIss9oanEOtt1VuV3
	 +zxu/aJDvo0sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7679C001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169083312867.29294.5701283776076700027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96d26ab0e2f923752ff19a239018dc514365cbb42663af0e6d9ccb4c545d298
Date: Mon, 31 Jul 2023 19:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690833128
