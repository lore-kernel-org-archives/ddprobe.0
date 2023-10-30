Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090063FC2
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBnJM5jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C304C433C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698646096;
	bh=WSF3BWJ111OwmFrEQKnyrmYbrDPB5Ib/DsvNnudauaA=;
	h=To:Subject:From:Date:From;
	b=uBnJM5jdrZmELzz0eUC1mNxhD/fn+q2gk/pMGPdyIAF4DEiSP1RnK00UwNHNwSYQf
	 WZ7JinzkIet83GV7P6+tgUeaUM2gchhOrUXNKp5SSVLa9Yn0dBjYNioOa4yZblV8tM
	 vUsVCB5FhmfibP8Ee7PTqO26rnwE0Y1jBcgpTp4DUt9ND/7DsgyDkM9r94ZAGgl8Pa
	 yycOv50to8zfXm+BZ9I7LYI8kH8fjLLndH+HwAPqT7pmMAXOQfmG2RxGQMNOuQ3V7I
	 NLT6jDuqRrM76UkzzU0PsVwK2QwncmeSPTrKJGKkipmAQz7bUpmDfJpLfFMBaIk6RF
	 z5/yJ3tgzmQ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6881DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169864609638.7839.3023277696010694597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ecc6c3eaef4707071ecf703dbc49903634a0fa95c372742f9064ac084dd69d
Date: Mon, 30 Oct 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698646096
