Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F62EA31
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 10:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ACCC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 10:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676198045;
	bh=bCn9WC0tnfrJnTDDZKFr8EHCjWapaS5dE+Ukovr14Fs=;
	h=To:Subject:From:Date:From;
	b=Dsec7RyXjUgSSivRi67m4wHOBDzwP6RXKvibHpz0YG339lxIBfqp/UVdCdIz/H0ZM
	 sqCFFYdEcfTy8VHTJTKHjtwMZtn2gTBY1Z1t28B/ajcl3A0QnoMYIo9Dx9fQfsA5cN
	 aflXK2vpDAvx1movCapaDuloRXIVF15alYfUJZ9TUtI3RgwogQAZaXiHt6eSPAqyxR
	 +n5xxH4vM9zm5pvKRYHGoeYvWoOtCOeCwCRr7vdeDFGGdBsl5GA+GVujuBCqEy6o9o
	 IsXoG8DKRuuvl4x9Gsl2dsCQXw5kHqbDVW7XmskEpiphOVMasMR9ZG2ZOwpBQrmijs
	 cmWfbPV6tzlkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDC7C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 10:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167619804574.26242.8389701854310374705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9915417ceb6f598a4f7c38efa84a9052a5abfc3ec94a1f8e213d3c8e528166b
Date: Sun, 12 Feb 2023 10:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676198045
