Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CEF21487F6
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717537583; cv=none; b=ijGxz2eNc7K+n2x92cUD1zSnHwGOsdg/hAPSX6Fai8ijECIcf38Hfnh/aBrIolcVSzVhrihlD7kM6ghoqiVn7OxEFOx9VLvOMV3LdP9xQfMI/KJKnFRWeIOjQTWcvU5VggZl2201kh9Tv34E/zcPSfXrKDWgxMWdXCpBL1i0H9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717537583; c=relaxed/simple;
	bh=vHRUKegedOXCeirrRQjXTh3zYDQRRdwU1Za8LqBUmk4=;
	h=To:Subject:From:Message-Id:Date; b=a1Sbr9BYCzG2RZRS/M7w1DZcJ9tpmBoMTdKTlM08/fmVKTfQEAkFF+FqXDAHenUoBpC27ozSM+QnG94dg/KuH8Jbp/8CBeKCK0WTtWocRMOsedTtxDWjvN4Lf55/A0GOoM8iBmiDKB2r6cYsb4mskGosioqmEVcupaWtWtopKTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzzjU5SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzzjU5SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1F4C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717537583;
	bh=vHRUKegedOXCeirrRQjXTh3zYDQRRdwU1Za8LqBUmk4=;
	h=To:Subject:From:Date:From;
	b=rzzjU5SYfsybUxIfv/rWxWUOusjNVFy9Ev14g81pNI3Y0/qZk6khDZ4stPBfcr+Cn
	 oy1HQb+hOfKPAB2xLD+PDMakE0aH+oWXxJNtbXc7lH96n6v5sPwXXaUtHgrZoWnkcJ
	 3EeDyC49XAnpUCgPdRPikvX8JQkpkZxrvwXOAjOybkSAgeaxVPYR5f5tWAjahgNkJ9
	 4RIFkk/mpb5EU+eggZwP3ZAXMEUz8kElpI7XDExh7Gqcd4HTAs65zpQtUuoeEa86Ee
	 RbHtB4dQY1e2PFDajnFpPcO6/2BqMNzVtCjmuVtrjthB0f/W9b6bDDRfvj/o0lyCh7
	 SwVUPs49EW4vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB3B3C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753758282.14396.7264707818433187389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2bf85078f3d7629ce0b4c9fb65b8bf11dec13ce49693168349b3e613e6f8d0
Date: Tue, 04 Jun 2024 21:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717537582
