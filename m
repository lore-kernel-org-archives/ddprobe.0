Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045AF378D76
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774791294; cv=none; b=VayvPxqvF1kMwZFXj1ywItugWuQ5IvAztJ0C2HXUfqt//NttzuMczJDNaDkukxij9v1p/UTtpk47P6gPFeUerwTyzkL6ZZ40xF1A58g+9o9rbmIAyDakQNwA+jZ3JGeJfuFUmKw4CQcfFNkT7as4Xqs/xeFPpMdOK84duMxTcAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774791294; c=relaxed/simple;
	bh=CKhWd6vnZ+ZA+VhaaweKM7gk57Tu6l4WC3KOaxQbkUc=;
	h=To:Subject:From:Message-Id:Date; b=gDfnVsBIlUlGy39m5lrGjOboQrMr3O+amV9YpzqjCh/JSP3grojaB0a6SiTCifahugLzmNkxOlpAQsa5Ib5K4KqX+EvGblIqGohhhA2ZnxPfmkGk2k7PFZWYeixZGtJkO+WVRoEhvj/oXMmXs4zygMuCxJPNShDZXNmZStV1IR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWAZvMiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWAZvMiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5FFC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774791293;
	bh=CKhWd6vnZ+ZA+VhaaweKM7gk57Tu6l4WC3KOaxQbkUc=;
	h=To:Subject:From:Date:From;
	b=NWAZvMiYIAAP4alD5W2N2iK8Bbux9FUPxhDG3yN9QcZb5pH/Rpg+aQzJpaHUdjs5H
	 5lkSsOF6io5+5x55WIj0vQcPxSEtzD+Ow3u3hpbkAKQi7J9aw1R/f5EqAL59ZVOD0e
	 19Ty+TfAMF/P+EPJuWU42wn75k2Eg4hKOk7G64f5Hs9KpuRPPpCjRq4g847dfpvZO+
	 5Q8tMbpDzzWMQMB8R2pe91r3yGJCCIVIZuszJiLPKC5EI8zu3DQMG8p8o7t6tWqYjx
	 bTtNJoJd/XP/aOLmO9q9b8FK9wLGFEdmb5MyLdKcJsb3dZt2PurCImBuZ31VC265QK
	 LZak2jlfwHDFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D9F3D604
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479129358.4807.13065235115016019748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6172582241e424a036a6731cb6d106110c4921df4600073eede8ea3ff030fa57
Date: Sun, 29 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774791293
