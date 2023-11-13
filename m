Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CC95232
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0XEhhOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92ACBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699841296;
	bh=ru6HcbX9aR6XAcOod067cg0miXjOoYM+ve6I5Fdm1nc=;
	h=To:Subject:From:Date:From;
	b=O0XEhhOIScbHSkhG6VxwyoTLsdY+hT4pM8r3bZrCjFE5eOfVX0zTs4r8ByRTyZiw/
	 JRKsJXIHZwfAMuKjjXOCGNh6TId449dtHsTwsp2ZIBa/KkGOZoT5jK7xE4G0gQi9ft
	 ptzVCyuXUy5zNQa/HG+GFZQwkWphjvSbJrzDfYaWVAMUGnSuWV4angZsprzfn7yUqw
	 qaGwUkJepHVwvovVzQh5EhEc8LP6/yo+2GEpaiA38D67DDAet1rGIdfextraNODwg9
	 R2pksdL8pjYI+X9BsoTnCcb7NT217mkf/VUSVUNu9R2aUWf4GG89pX/vnGcwan2Yfb
	 NVDbwjspdQ6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F27DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169984129641.29367.4166589994282394618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0af0aaaacc73cbdcf3e9287b5e05416c5d1db234d695a441e323be204b7d5df
Date: Mon, 13 Nov 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699841296
