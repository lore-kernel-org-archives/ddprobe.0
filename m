Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4A915AFE
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 10:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KckLucCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4767C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 10:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697623692;
	bh=aVDVckUtAhhY29p+jFAdkaQv1/rPZ7BPPDQlJgOVBoY=;
	h=To:Subject:From:Date:From;
	b=KckLucCkxUAXlKo9SFovfKDz/M+7SW9xE//i2+JhscY2wyGNlcfw3TIz8ASQFlSxc
	 CMoTbBxR+R8ynnYickBC2UnTJhLWLINW7TGTaw9fNrhRqwHbSuBsvi5UCqHhyaZPtC
	 F5GBl9rGNwk0/0GwLaN9x9Oqs7YqjquDbq1BWCFDp6DFMMTG4v8HAqJZ+ViiO/rXEA
	 XyzPXIUqDH6WLgXeFLcQyXKBzrP5Duo8yP6SpzK/ACwu1B+BHtD1mQzQNb5QD0ahR/
	 Kyz2uvoOCqW3DVrc3tqPUnR9+6CUTMDdR7wfi8ujZ/C6TNxZabAtr0e9lb+rYOgplZ
	 m/JSuWMKfFIjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BFECDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 10:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169762369279.18114.7737028468838223035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45f04f955dcd0e25f370dc959d77a1e758bd5666f265180db7dd7045d491ca0
Date: Wed, 18 Oct 2023 10:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697623692
