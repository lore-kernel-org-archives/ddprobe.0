Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E674D184C
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75197C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662182453;
	bh=WU8TxIqVyc3XeSgCEAd+Ry6Au61a24+NeqfqbxWqpZk=;
	h=To:Subject:From:Date:From;
	b=tSMLLK2pUQCTaGeMX3kvxs33mdt3uQgDwa5LyUNoFJySKLUz4+3kSh+heDvbVTWYM
	 ESkG1hJLVG9D74IUHUY3UOs80wHdxLMOd1wYhLFk8rZDuJs4kAA/zhfp/8Muu7KR5i
	 dF1D9wyzkvJETUtMY4rsDGI7UGv00jRDXBTmz6JdiptQ5fDqCQ1l9BjYP3ue/o5Gs8
	 wuBLbXDOBnv/RfJpg+D4enR/pKsaYFguoclG4PlT3okNlQ2DzbP1i6BuLjiWnbi8K8
	 fUg9FlqstdtGB2sAalgrmG0N5dfDgH1g7krlx3tmQjHWUY9hxTLgeNaR5z5QNIG6yz
	 yHi9oVcTjOYAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 597F5ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166218245333.20346.16763773707569335954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bbf6aea359ad5a86f4c655f6431cbbca4960dc4c794932415bfcd583cac546
Date: Sat, 03 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662182453
