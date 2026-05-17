Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273DD40855
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778983234; cv=none; b=R5nCbUaxcXI8Npd38fpHiaa1bwSldK1qtNjZRiVUcvyToo86/YeB/qJub7fOH3J7tErVOS8uiSFmM/p49E2p4PhKciopSPwaEKEw2zVaw1VEv+J0Xpe2Uc7xCVGpS7QkaHisQJyzuIvYgdCEyo7eDo6vd/I3/lMh6o3U1k0ptjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778983234; c=relaxed/simple;
	bh=i3DBkp4pYzTdq/FXMFNk1rZ8FZs0PkiVDYw9JCtsCTY=;
	h=To:Subject:From:Message-Id:Date; b=Y3SZU8CWJAGqXPlQ+h3HZFSVoSuBQIc8FzNru4BWgI2ysq74F2hlJVo1N7eglo/AFsuU6TV40iPgnq8CjlC+aAwJw1/yJQS32R6gOD+4jXd/b0NWUpU+40OfOrWDKrO52IlygvtESou+LD9e6xZkjx3dnS/2Et/lT2i3m7+/o3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJhtVpbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJhtVpbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD2DC19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778983233;
	bh=i3DBkp4pYzTdq/FXMFNk1rZ8FZs0PkiVDYw9JCtsCTY=;
	h=To:Subject:From:Date:From;
	b=JJhtVpbwtbYtph8mNm/TOnCS6nf90w4Ezt7seCRBNM3JI/5ZHc+UHNObhyjMPjt2e
	 3xYdYrftv2hR5dkmgFzKaaRZRSLsrdUkbnliuR36W2uv5xUCHTMECJYuRMtU+2SI6J
	 9EZ54BZJks47YLuRynVyYqutf727Bqsc/nTRuiY9FqeguuKlFGJIcyKjQQwEBf1y6f
	 LwFP/DVb3IcLYqcaio9g6oQ9Q9IpnWxm6c4dip//nOQm/RIKtpMr74flwd+Qah8QYl
	 CZccYFYblFn7Hh6FgYafx4aQh+HuXkBBrC/rlisQR0/vcDfWnF0xoom6yQqZra5LsC
	 +Nb/WPnnAkVlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCE9CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898323369.20102.14562285538813398509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bd6d58f05f037f34a0bbfa2a7b34608e68501f632a3499d8757ce14cde8738
Date: Sun, 17 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778983233
