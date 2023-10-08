Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C1F46B8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfTNpOzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AEDC433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696749428;
	bh=nXuUaNhLLk9qddF1x3EIcvS+IyCwsq5b5ATxmMnv9L0=;
	h=To:Subject:From:Date:From;
	b=VfTNpOzIMFCKr2uYyAXcneUblnIUU2dbNgqGH3Y4v4PlUYZGvcLvq1mCBrOsIK0zD
	 04CjLxzxDK+A3hPL5o4/buxSLHx2pJfST9fFxuXF/h8HfNHNGlyMIFqBZJ4fBCawOT
	 ITWjOXeLN4Lo7rhj3Vqfue7mQOlGdA/b0qTkKhC/TbqkUOUMFZ/eXgU36YmdATqCU1
	 X/XTGNVsjd8eEByHrTkWTOfnflSKVcT7tvxbvyNKPjPZ1KIIiSUsBzr1rwmEUlMJg1
	 C5x5LSCWc1UpVsMNdGbApleNS3t+t4gXQV5sO7gkY5c/1hMmlgQ9/sdka3XaDCqThr
	 I+9wJRHLVEj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A3DE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169674942868.1697.8863540109824739364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f434c710f30ca1a6e8b30bfe1c0b03a01751f27c8db533aa885a73e7136c1d
Date: Sun, 08 Oct 2023 07:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696749428
