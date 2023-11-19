Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0157D1103
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLMX5j9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821B9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700375896;
	bh=ouIqiD//tFtGOsiN0mjTiChCwOpus01+qt8jUUdtwNQ=;
	h=To:Subject:From:Date:From;
	b=SLMX5j9ehxTYpIUbDxLdsN1YqgvMYdC8dUxq0Di+Uq/AjDNNemVsHVLPNmuiN6m8G
	 ZjbOOnqDiRtEF/qhi+tLy6TB2vAQebALvu1c1ES2ZtpoYnaQR5wOoeQwv9aWzuIvb3
	 Mpdx0bKqY6ONkulHcdQz0eTcsejaI+0h4G9h0KDet9zjmtb4RchVVPIMeayIejLAmB
	 U/N3zRgP+aOTshdi0jxbJ0Askm4KwNbC6q65DTGinGK7TfBaDKgN5cT+dmssPmUnbm
	 Wooc/0kDIXW5ZwtmWpj9soGVt4VzgRGcAg9r58iFkpuUIxbNbdhZ74lKxALdvrtYS8
	 18jymAbSEittA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64926C54FB9
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170037589637.9253.8486227791669190880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5055537c83ad63f38a63894652a891f7857e07102d7f26a962260f14a73d82
Date: Sun, 19 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700375896
