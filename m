Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532662CA2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 16:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01646C433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 16:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682352126;
	bh=U5LoONnXD6cgp+0Q09O3uYci+bcELH0ahmuW2Q0thdY=;
	h=To:Subject:From:Date:From;
	b=HyOcEiiLHua4fS4PONj2nzcBr7ahBmgi6mOYfXoN5CLJzHCwKQZcB6V25u7fFTjfe
	 c4CaXaf0IxYn5gE0zkBYgoG6mvUvdAhkMwGe/XNGzLfY3g8QfAT+7RVlwaUMzeD4zY
	 2ygmGsqQV8Bo3iqtZbI5dSTFxKBGu+lZP5QjGhpq+ezTK6MYcT0Vzp2N/NB81C4dP3
	 Wnkj9Lnb16pZThdn6aRMu2HA87QL9W4n4zqUjxKD7zMNZXllWcf0HEGGHDI2K5a2q+
	 7jYE1j+rPwGJs7TRko9mCuq6YL9Vh1bfB6gdBRXUprZjyRC3+5baLT6DPR5JYi4vX3
	 WAD1E5Wnce/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9795C77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 16:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168235212587.9465.4506026219219157604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a48ee20ff9235971b1290d5ccd89d25d4e8f17f5304240b1490e83121e233b2
Date: Mon, 24 Apr 2023 16:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682352125
