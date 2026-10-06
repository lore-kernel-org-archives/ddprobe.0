Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD54C213E89
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791271834; cv=none; b=WLUp9YxSazghcgDa8+d6qvs4NShIvBOEUILwRadkReQq1KNWUJFidMfYZxTfpnJs34sB9+dxyiEZFBROtpPy4oyeMVs4sRsZX3FLn8ngMS0qTD5wgJ98UICJLbg2C15KjpynyOkxE35Y+aKMovRdkw8mHWZ2w8OaZXCZQGwDibI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791271834; c=relaxed/simple;
	bh=j/kIVMBn5y+BXl8xFWehEeOgj7gg+uGP7xSUP52gC6s=;
	h=To:Subject:From:Message-Id:Date; b=HVL/P9qj+kdBRB3yGY/CVPIzDjbOKRlbD9wNsrt+H8j4FuhoKQtp/Wuocn52ZkHR4JXv5KS31Mc5feWOMNudsF5e18IdYFz7CgmfSklEqImmXCTHThmemftZfefz3gRH8EnljfsS69VZaC7HgtiQJnOSciSj0Zz7wvM5riXp+Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxsXT7YN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxsXT7YN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4F8C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791271833;
	bh=j/kIVMBn5y+BXl8xFWehEeOgj7gg+uGP7xSUP52gC6s=;
	h=To:Subject:From:Date:From;
	b=UxsXT7YNSxls7RmfeuopSx5h+tMIMeSALIRYRqmmYWTqP0cK3ovGKWI66cTD6A6kO
	 iw0e90xxbMLz6ws/3PmxzhSNI/dh1UfSFDosX/OzEXvF5zFG1VmDNTv5ZVWq1arNMi
	 /PZ0J0TK1nHTShWMQexHyRW7OkZ2xxX1dIQlp2Vmgn2smNPpNXTSYrl++6IenXjnGf
	 KEHCacjwoxqHltBSu/UFXcaGFlkdSGET0TH8ZPppdRSVIgvRYHiI7szb6npV8L7oLt
	 oejuWdP7H9VztIi0UPy/w5WP+VxJHiv9eu2jcPmKtqsMKgewfS7CeKAkg+ops1nTdy
	 sUOpQVIryhKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F7BCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127183373.6974.10802647927227070809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753b524712b8eb0552b831a3ba888c788801134c3a4cf5bbdd643ea48960ab4b
Date: Tue, 06 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791271833
