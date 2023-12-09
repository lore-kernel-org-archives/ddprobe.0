Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227C77F8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDJRjhX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8298FC433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702087696;
	bh=DrJtzgFCyD9/HldRHZw10Nn0fMxQpvhIDmHVpx1o8LQ=;
	h=To:Subject:From:Date:From;
	b=SDJRjhX3vNNO5cWjAo16b0iachWvr9FIG+GMLWj/c4Cg7aL4hMz3oX7ofjxeKRNUx
	 tfJBOIGxWu9AMoBrOmthiq6gUHlYvjjw1IuIIj7bArxfu7jlDZulouIakyALomnJvO
	 A6EE/1JZWTsZrzX2fndfZyHsgtTn6y3zluMMpJHvUrWTXKAdGI0c37G1UOK3GVoJyJ
	 NtWULQbg2el+NVqEvL+1Zy8YBbrECZcHRIgLu4eSpc/IJrD6q+zP2kkApOMdjASD91
	 OvCNMi40fM3wAx0PmFNpBbV1VaXtnHIkiiwBkb9ZFkVx3/omgEDZrYSJ0ayb47GrE8
	 mCW7OngYy2/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D09C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170208769638.20742.3077069850580541273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c7cc1a2d921c04ac763b8988238e477176b9e323acc99a123d170266def837
Date: Sat, 09 Dec 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702087696
