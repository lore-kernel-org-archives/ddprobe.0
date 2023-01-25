Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368BD10ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4864C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674619385;
	bh=JJ7l+wEQH7aBVxdD2p6F8zeQFJqIHnHZ28xstuIofuI=;
	h=To:Subject:From:Date:From;
	b=E0joVnsfut3xKKqxBP3djss6gby7mVAVfEAJfLVHILLfWIgkXgFC0zm0pL+/ilyWP
	 yRB+83ZnvHDfN6U6Vx9bdfOgZWaQKMkqdG9AkRYwyW8tel5jErh3olLgwSPhQHMCHZ
	 F7s4E1zY9T4KSVkIDPeoqXi/aZ8Skho8FsSkjZ+sp5vOR8ofs3QBe9ZjoNPR41Rur/
	 xiL8V5FSohxNLTeclfjz7/6rOBha5EEyOMDKeqtmgY317ndQnMHfSsZzaneoqZjtGn
	 gcD2qtG0OWBAKS2l38aqDFAL8Fu0xDzjApAtqY/VOMTpeW7IajAaEzuMUqL9ROyYXu
	 zunmHLkwvHNsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9461C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167461938575.23899.3741952991339787229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7ade27fdfcce44ef5b1a49d94e779ffc855d1f9e552be953b499fdb8ebfcac
Date: Wed, 25 Jan 2023 04:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674619385
