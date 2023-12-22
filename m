Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051B017730
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ik+ROL7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79207C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703245696;
	bh=wK6zgh6bDp7KJxhecSmlopLWYdbztyj1FABU9Beqrcs=;
	h=To:Subject:From:Date:From;
	b=Ik+ROL7wkpKEc2RBhe+KDPcbOT8OKU3UH9HmtiDESCo7mitDScXTyBBMUZza6ztcv
	 A2CK5IdqVIusHrikIQMVw6v2TYWveaZEASBEhCJYtbYcjvNoJCC7UzE4ia7+GeCXFb
	 imDSQdLGqLVJlzRQ+KVVKSNu95U/d2DsRiFrx1rngKncF9Yo40XG1Jb4/6Qsl/YRCd
	 cBqKX69Lt/doaKwbYqD3OxvYzlC0oCH6l+J7YgXZR2cme5tcsbXwb4IyC8qDyBak+8
	 sXApyMjaH6eVvF5D4qjvyjqWdkedv2Qtg0wyDdwRUEKxW7lQHYDKzIQ/5HMIXW81fc
	 +iMYtP5DsXftw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBEAC41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170324569638.15103.8877020172234196020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a7e3d4d44e034379f9ba530699d36277cca654e7559602d3cef702a98e5431
Date: Fri, 22 Dec 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703245696
