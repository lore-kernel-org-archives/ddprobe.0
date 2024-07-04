Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8D0846F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720056923; cv=none; b=tU1C4i3y8ewfN/EemJDKhUQ5RMc2xXIZvbjnm/NrFp8q138v5o4sHjQtUnrpBeQIqkQ1y1aeOid+4JqUWYoiQFpU9tlvyhCW6XkCeAQYEGSCtub7UCalv/tZ0NmDwRL3QLL1IFTQcvrAsiEHnKr87L2ajSpqyVXxv6FzdaQjw60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720056923; c=relaxed/simple;
	bh=ZPRcbZYD+kGZrv94qpzqR6ycf0f/G8dcN8b2RQg75XU=;
	h=To:Subject:From:Message-Id:Date; b=VeiPBgowPKxq1VFkDjiZzc4u55yYk5m9PTFMcnQiC2dOaGc8QFR036p1lDmaTA6CdS/IKLvpXLf6goSnumM5/ijxE1WcpYNJ/pUOLIOGDJoMjqP2T80w6yUmuWlCsBSefxGziV0QWdgRGB/WPRDKgdCggqLYuRIGXEXu222lgPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DONY1l9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DONY1l9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1781C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720056922;
	bh=ZPRcbZYD+kGZrv94qpzqR6ycf0f/G8dcN8b2RQg75XU=;
	h=To:Subject:From:Date:From;
	b=DONY1l9ELWH7fAroAsn5n7yur9zU21OQrPvOoxGms76Q7atO3ByIwozjLKRw6wdgn
	 FQGXWMezyN+pSaxWVgWExqqbyIUb7AAbvV5VUOt40c2PLokZCxFSf5bejc4jwqVuuS
	 f2Lld+AYEIl8y79HCCTGN61klja6WXZRVqxggwXrGhpoFAD+FpTIZj5cW4xSSSgCrB
	 Xc7oWNxB0ys3ZCisZ2iGfLHoc+hy9V1I/B8Wce7jvGwoLoCuG/KNkMeZ8DJ7+psyu4
	 pg9zUzNtiFNbuGyIy++YbPYZLUo/UwDQaIj5YYfGzvQPMkXq9zcK8Dc1MnQ4c6WhE/
	 mIGvBBRmi7YNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2D0C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005692278.5409.6794314417480738185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47875f24a7fc28085a9bd3c143512c33671be6d40c4073ba24d486101aa5a51
Date: Thu, 04 Jul 2024 01:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720056922
