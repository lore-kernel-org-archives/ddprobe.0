Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFD24501F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713027563; cv=none; b=jBZRuXp4pf5eA4HqN6QOPCF0lwI+wWwAU673bom8Ppe1/dfc5UmJm+HiosaagR2dN3gHrB9fKNCkGtQa7p6qAL5L03rlKNWOeQYtjt6FVGbCUsRbAPNrAIdcpClYQhPEO1dPd04F+d7tZrg3Yew2t7dDUmmlJJnfPck9ML4hPQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713027563; c=relaxed/simple;
	bh=Q3tAvAwU7XcYW6TyFAMiWEPT+Alwib+cD9MiDxnVV3I=;
	h=To:Subject:From:Message-Id:Date; b=gzLIreoA0+6TxbrHSSQJPKTiPwtYMUH4vgHD1Fz6STj8UkKDmzi5VdBkHayMEVK/OUwppaFordeX0eWJxky2j87Fpd7W8ke8e9E1aDneCxwB0bdv1UDj6rPULa0MzTlULfGvxXCSuMw17QBK0cIHqnt2nviAP9tXQhxeAVDGeRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBKFLwPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBKFLwPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90A7C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713027562;
	bh=Q3tAvAwU7XcYW6TyFAMiWEPT+Alwib+cD9MiDxnVV3I=;
	h=To:Subject:From:Date:From;
	b=TBKFLwPwX+XhS65wVuAC9sPe879GImSBlf0MSylxKFKbX72TpnIYio1v38t7RRM+H
	 n8381l754u9zTqhkkLAOFspqVKAVMc9mkVX7TZbExmzgL8yhwLuEQfN4XQRpuyYu9A
	 /x0sqn2cslMj8jxQEPDt7lsRruSI/fRDxg3jSOO79KrP5YVx+sI/Y3fheQgUVwMWI+
	 2UdCtsb7nvBw9lg+q3vy0QbJVyi3rwdrVv7Z5gAKgor39XmnueA/TsVh/thKTX9Gu9
	 xbIgYfgJTT01ABaGkkEYHwXqNGckxb+RyayJXbiWbj4mTq3dugTdA0P1ZF2+t2MNtc
	 NMYPH+z64lNZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7ED0C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302756278.8545.3301594884190754871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192aa704341fc35b77ff6fb84b73ad82a43175541c3c0e570304c6ca1e0cfbac
Date: Sat, 13 Apr 2024 16:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713027562
