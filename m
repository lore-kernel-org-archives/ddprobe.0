Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1514430EF61
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759402794; cv=none; b=AW8IwLQwCwX2jVcpn7gV2xvzBJTF24mdFAkj6NFoA07FtQA6v/Ss1K6mrWOiX68oNmtx7EywLkfY4f0jI5jLbupZYBCw/3bG7Gz36B1extrv5mbC/tzSa9r6xzzwdUIyW3NHLf0QG8FbNRfIn7NhTpewFqgxbPqEj0yKrvpp9d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759402794; c=relaxed/simple;
	bh=h1xRJ9GiHy1NDRLNrvhtSLpr/MyIhdxbx5GUJ4lhP8Q=;
	h=To:Subject:From:Message-Id:Date; b=YKuS45XtQPyA50geia1z/YKYyzJHrsvluDwBaWsiAp33Hbhk1+FBDacoqjOzroyf5WeKorC2I77YnRxnmyXeLAjBIGzNqnf96BYlWA5cgs8J6HOc0PFrkVkxfe2DPLCzxDopR9Z3tAkKu/C8KcHONs79ePoYrU+Luu9h/GXRSnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJqMAG3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJqMAG3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA583C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759402793;
	bh=h1xRJ9GiHy1NDRLNrvhtSLpr/MyIhdxbx5GUJ4lhP8Q=;
	h=To:Subject:From:Date:From;
	b=iJqMAG3NReT3cYKmcxCp3V8y/6AxvK3pZHJ6XlHvxh0+L+x6D0aTZPVHi2ZiYHfth
	 SZSqqAe+dXCetImLZ2qHeK937+YfS5RFNqxmJUfE4z0f/0yHu1ar7WQ7gpsVfogiYQ
	 lB77VloN3zgeVW7YHB814Qb9Yr0oE+vS/BuJu7MavSn07GdA8d6MS6i8gD49S01bUh
	 7sTcHK/9sWHCdY30cTy07V1Lts2tt1G2mPNME4mVb1/6DpVUCoGB4dYAKS5K3itFLm
	 IaK8b7zytp2i3rF3Gk5Cw5in3yk83dLeIO6WD6Tqz71ShxC8NVcRezazlebM1qD3Pi
	 IfmfEjY0pgzCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AAACAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940279358.9320.14267161830163886691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7f9f9002c17dfd059312c903549f5a343c50379b9aaf8699989d63abc350a7
Date: Thu, 02 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759402793
