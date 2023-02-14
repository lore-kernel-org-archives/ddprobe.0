Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC527C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 09:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB37BC4339B
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 09:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676366706;
	bh=2Kf6IX8j/+yk4NQ6RmyIdZ/10Lq7ZZylUmc6PQtlIjI=;
	h=To:Subject:From:Date:From;
	b=upa0z+BdrUPZpNfNC2hLs5A7xsqJ7fN6jHlZ+Fdn+1+0evu+0eVW+w9c6h5mfGuo7
	 fxDLJzOVDm28E75p0RrzGu/PDTNZuZDY2XHNx8fPEcNdnOTzEhe1YCyQbn1B8lwAoc
	 e361Rj8jAez4WNx+F2fz5q1exOIhzSaXnxlg7BUeY0GiIB1mp/v1UxR5ZtUFafdRPX
	 /Fp7CDKkL0MFUbLefiWlIuVnVmKnoA2+ZCmTxMhrTsyEQHl1oBArweEYVPzHIdc7cX
	 IgWOCqWk6Co0cbs1DJdlVhoWGQIXHeEmEht7/4MBhlfCx6rLr1P8/8UJTanBkiMJPv
	 NYln4pfRdbxTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E22C64EC7
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 09:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167636670580.27857.5397344674789693433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68fdf85569cfec5dd0c1a3a93e19521b381a5cc6ae0dd89492882a2c5d4d798
Date: Tue, 14 Feb 2023 09:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676366705
