Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359E5BA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747679995; cv=none; b=Sptlh4RCGZ+b5AgiiJ6KFsHatnYFZm4saRg78uk7Oieh/BTXaTe1vMEsOBAGYpFq93erwfBlysb3/jHABVjXF6+DWcEVR1cVpdd3csilAQlC6GHEECERqasDDM1YvcbjkY9wSTrgRNGXu5MjHYS5QeMF9BE53BkWfBilJKw7+fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747679995; c=relaxed/simple;
	bh=9VD48jJiVqz1Fb1tFRC9T0OsAGBcbOdSLFt2gLeeDFQ=;
	h=To:Subject:From:Message-Id:Date; b=WfP/GoxePqHkQgHpgLkOTnm1uX7SY5j2l7KWWXpCjYRztLAoyh5QQlYnkEBIvkwJxUR1bF3q6xLgSAqezDHg2EUfzxOhcCNFBGsXI305qjeyv/AAvZSGo5ZkXukx79nTBQyfE+Hyp0lP32cJ1A6fsEytez94dRo7+d3HgQmCixs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFhj9Rrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFhj9Rrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5628C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747679993;
	bh=9VD48jJiVqz1Fb1tFRC9T0OsAGBcbOdSLFt2gLeeDFQ=;
	h=To:Subject:From:Date:From;
	b=uFhj9RrkaM7V1hSNCLwbWfEBy2WKt2s2xDq7RFHmEiegRLcbpEe/AzRqq019TyRn+
	 e7l4XHmL/2eDbVsDx1wPdG3dL2kFCzB4dlFSKLqUXNbh447V15cpWBlNuD42YP2Tj/
	 S4ccq1bTWWBvnmn+ewKwDfHVdqnt6JKntYqzwh+AvXIBKF7VozvVieh9a7TP+3en7A
	 1HNCUu7oPM5xynH33Xj8CfKu09anfEfsRV3hvdZqZvFkWDDPZ+AbH4tOlHyhwOvQ9K
	 wp4F52exCVQh4co4bD2YeNwv4sLzJ0kwLXazVxEon4WmF/5/2PksfMndosl0bWUKPG
	 zEaUyBk/NI7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90746C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767999358.29123.1256930036405844317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bd7cc4954b80138264b54e0b8f9c5fc411f2f86364588c2d3eb3c9bc3415ad
Date: Mon, 19 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747679993
