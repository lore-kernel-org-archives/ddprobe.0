Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA3D1FB2
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D822C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665369653;
	bh=De+KNbNjnCoR11PojKANh4sSflICX7oL8EWk3o26jWI=;
	h=To:Subject:From:Date:From;
	b=qFQXE+A/IIgKVGupMsdIJ6r8VlVjBObJ0iSbPiTvfkEQVul+vA0RSrMknbTnpX3D7
	 GEsqE7omDwpwmOqe++P3UQQvKKrF0DhaNKawxCibjKMiKhPjBORFhaFNQpwlRV9UmC
	 w9rTcPpU/dAvqz4Cu+tP+EfIa+7aHxZ4atVSrNFy9lxIbaws1J2pnzjKvLaNQx6UyT
	 YUOmlsHccadWvJLb1rU3yetUkLbBbPG/PhavsN+KSi2lUTzkfaGWbR2Gy0RS0h4Doq
	 pCp68M37yGarGW2sXHxSuFtVBkRl5pLNnFvZaxO+BvmTHyPWVVLe5E2br6rk6IpnpW
	 8eQuYY3SNAO4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505ACC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166536965332.15344.12341038866715435781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c07b25cd431fc60215231cac698ebd1a30ce6b67e0c042c5005082e63e8c0e
Date: Mon, 10 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665369653
