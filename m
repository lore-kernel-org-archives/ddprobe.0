Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FD5FC16
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7BBC433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685017505;
	bh=iDZ/t7itMlCUEaokGnTYyATJMAHxUYisTvF5HCrmIoo=;
	h=To:Subject:From:Date:From;
	b=FzhU4CqGw5UUUEYhB6UD2sTW1X6Vuq8mTljkleuSH5Y6a9XnPTJWekK7UEqVmy9Mf
	 UUkCEuFSBD4ueOSa4PrtnyQWzKrE03525qaD6PgT2SX8F9p+oFNEkS5MOLBofo/fcK
	 36w3jERgN50mlWmgjzI+B8m0/sMvjoBEKwYdEo1u2mMvpZl0fJuATYT6zE2lzyISHf
	 gWFWbkhpAgYDBR/MHtKjYFUH4Gn5j8z7AvDB182d9EeiCK1Ev0ax5t4ayWGsEY3kYq
	 nTNtkE7kXsQPLvSH1ey4iPq7/piOehgPqPHPcDhazrMIJSX5wLd/MCZ1vUKqVBpA0/
	 7qD7y4qARl/8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BD8C7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168501750573.22858.13778012623161133014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a7ca9187f0052b422537b373511668d5d69c4b172dc13b4c261821e229ed63
Date: Thu, 25 May 2023 12:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685017505
