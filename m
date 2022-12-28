Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89B61109
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8816FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672225887;
	bh=6OsqS0bX9nM+FDsSnxIKcqdv/6a/IZ0fZBA+FyYUtSY=;
	h=To:Subject:From:Date:From;
	b=dOhLWWcsir/VJt9v70bRcw/BcmH016gVU2TUne5XmpJPJ+Z5+WhRMlwqzFzBEzHID
	 xQ8AyDlMTjquOL8awPEFEFmT42vxMupoesrG4ZLIszsd7PRxkqrMlnnBxJrkdc6Wj9
	 Jwd879ur2b/3zyHRSdO30zvGt9naSbI91KBZqsOVHJy6A57sUf5WopnAQJKC2XB9Kj
	 UGg/ADChtb+MTOqLNZceMbwDb4toHnKderIRJ5P6kS+P29xS3i8HFyo3AAEFhMwolN
	 iVJFOi5PofTZAuguRSfHfglv0bc+T60e4J3EnUBZnmE1ClRCLJw/7IPL1HoQMDt0gY
	 2eB2QZLBPqA6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C721C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222588743.22928.13380144664049742807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd6eeb4bb2d902cf4e7bd2c8f782c3116fd76163d36bfcfab44408508e6623f
Date: Wed, 28 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672225887
