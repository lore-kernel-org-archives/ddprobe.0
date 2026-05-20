Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A553F1654
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779291634; cv=none; b=Vw11UPs1Rccn5CkzCRsdT8oFtJ5EdBalgbhVUsQZ9jm8M+kC/FZgTJb0sj7y1WIbpJ4+vPdjqKLZ4wJfIFDHFDGRnhc1Zz4Gwmgny3TNLyBbR0G7bvjG+LioyWkrKuDP4EreVHojQxCOGCMarIpTMGxEJ6kmTnAZ4tmiMB8i0Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779291634; c=relaxed/simple;
	bh=/pwAxq/i19MdP7kNGGuJiTHS/HZDXBi7NkH5QtqKQYE=;
	h=To:Subject:From:Message-Id:Date; b=CQXoEMgz9KyvZsEQpGqZIQ8Dk2RfaxlO0KBidMzODlTXdebQxNPaK+1e+ZThXaSHeQXB3Hd0mAHbYceCwc2X/c/MtHTwYIwcvvhPVAqO4/4aLZy/F3qN5em2sD0iz4BGeFQKhJPFZSKsXmQZLuQTGQRErupnPYD5iWCXu6gM4Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr3y3bQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr3y3bQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE69C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779291633;
	bh=/pwAxq/i19MdP7kNGGuJiTHS/HZDXBi7NkH5QtqKQYE=;
	h=To:Subject:From:Date:From;
	b=Nr3y3bQjfhumpUGf4yHdyWXUB6PzrcwMxeWvvROEZUsW+WqP2bJv/c5DZTTCnSFgu
	 d6+Gp6a6yQtJLSphDFwDJCScuirN+50FIodz1fmafTHfEcb1nse39p5TJuIQGPi1Uj
	 mvmMVKlp+Rq/WQvJxGIO3XKaa0d9+cDoytlpCSrf/XoOcDQCbjpbymgIel0DvYHgBw
	 /S/3HAJcr/o4fd90PUJDloCytLPMwqs2ecNGWc0Q/6H6+hCzz0gndY6yPYZ1GmuTg0
	 bKUdo8NfHEwafqghddMKS9m39Vj7Sdtgl+CrRyfGwMzHqhJNyOSPbG6AWxWQ37Ny9f
	 FYJSwZjjK63iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B13CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929163377.21951.11643898402145046165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e18f691103b66e0561667c3c42c6c7b5c456b9488dd08f9a9165ec70ec0865
Date: Wed, 20 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779291633
